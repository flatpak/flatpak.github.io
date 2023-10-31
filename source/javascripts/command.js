// A web component to display a terminal command with a copy button.

// Icons are from https://github.com/lucide-icons/lucide
const copyIcon = `<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect width="14" height="14" x="8" y="8" rx="2" ry="2"/><path d="M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2"/></svg>`;
const checkIcon = `<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>`;

// Define custom element, so we can do <terminal-command>apt install flatpak</terminal-command>
class TerminalCommand extends HTMLElement {
  constructor() {
    super();
  }
  connectedCallback() {
    const commands = this.textContent
      .trim()
      .split("\n")
      .map((command) => command.trim())
      .filter(Boolean);

    this.innerHTML = "";

    const code = document.createElement("code");
    code.innerHTML = commands
      .map((command) => `<span class="unselectable">$</span> ${command}`)
      .join("\n");
    this.appendChild(code);

    const button = document.createElement("button");
    button.title = "Copy the command to clipboard";
    button.innerHTML = copyIcon;
    button.addEventListener("click", () => {
      navigator.clipboard.writeText(commands.join("\n"));
      button.innerHTML = checkIcon;
      setTimeout(() => (button.innerHTML = copyIcon), 1000);
    });
    this.appendChild(button);
  }
}

customElements.define("terminal-command", TerminalCommand);
