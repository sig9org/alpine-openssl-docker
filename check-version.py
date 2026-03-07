import io
import tarfile

import requests
from rich.console import Console
from rich.progress import track
from rich.table import Table

TARGET = "OpenSSL"
REPOSITORIES = [
    "3.0",
    "3.1",
    "3.2",
    "3.3",
    "3.4",
    "3.5",
    "3.6",
    "3.7",
    "3.8",
    "3.9",
    "3.10",
    "3.11",
    "3.12",
    "3.13",
    "3.14",
    "3.15",
    "3.16",
    "3.17",
    "3.18",
    "3.19",
    "3.20",
    "3.21",
    "3.22",
    "3.23",
]


def get_alpine_package_version(
    alpine_ver: str, package_name: str, arch: str = "x86_64", repo: str = "main"
) -> str:
    base_url = "https://dl-cdn.alpinelinux.org/alpine"
    url = f"{base_url}/v{alpine_ver}/{repo}/{arch}/APKINDEX.tar.gz"

    try:
        response = requests.get(url)
        response.raise_for_status()
        return extract_version_from_tarball(response.content, package_name.lower())

    except Exception as e:
        return f"Error: {e}"


def extract_version_from_tarball(content: bytes, package_name: str) -> str:
    with tarfile.open(fileobj=io.BytesIO(content), mode="r:gz") as tar:
        index_file = tar.extractfile("APKINDEX")
        if not index_file:
            return "Index file not found in tarball."

        raw_text = index_file.read().decode("utf-8")
        return parse_apkindex(raw_text, package_name)


def parse_apkindex(text: str, package_name: str) -> str:
    packages = text.strip().split("\n\n")

    for pkg_info in packages:
        lines = pkg_info.split("\n")
        current_name = ""
        current_version = ""

        for line in lines:
            if line.startswith("P:"):
                current_name = line[2:]
            elif line.startswith("V:"):
                current_version = line[2:]

        if current_name == package_name:
            return current_version

    return "(NOT FOUND)"


def main():
    console = Console()
    table = Table(title="Alpine Package Search Results")
    table.add_column("Repository", justify="left", style="cyan", no_wrap=True)
    table.add_column(TARGET, justify="left", style="green")

    for i in track(range(len(REPOSITORIES)), description="In progress..."):
        version = get_alpine_package_version(REPOSITORIES[i], TARGET)
        table.add_row(REPOSITORIES[i], version)
    console.print(table)


if __name__ == "__main__":
    main()
