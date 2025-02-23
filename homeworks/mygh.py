import click

@click.group()
def cli():
    """A simple CLI application."""
    pass

@click.command()
@click.argument("name")
def greet(name):
    """Greets the user by name."""
    click.echo(f"Hello, {name}!")

@click.command()
@click.argument("a", type=int)
@click.argument("b", type=int)
def add(a, b):
    """Adds two numbers and prints the result."""
    click.echo(f"The sum of {a} and {b} is {a + b}")

cli.add_command(greet)
cli.add_command(add)

if __name__ == "__main__":
    cli()

