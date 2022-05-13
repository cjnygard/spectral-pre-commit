# spectral-pre-commit

Script that does OAS linting against git commits.
Main usage is through [pre-commit](http://pre-commit.com), but can be use standalone if needed (via cloning this repo)

## Available hooks

### `check-oas`

Validates your OAS specifications.

**Example Usage**
```yaml
  - repo: https://github.com/pcipharmaservices/spectral-pre-commit
    rev: main (or specific tag version)
    hooks:
      - id: check-oas
        stage: [commit]
```
