# TestWeirdDialyzer

This is a test project to demonstrate a weird behavior of Dialyzer.

## Execution

```bash
mix deps.get
mix dialyzer --unmatched_returns
```

The result is an error message:

```
Total errors: 2, Skipped: 0, Unnecessary Skips: 0
done in 0m0.94s
lib/test_weird_dialyzer.ex:5:unmatched_return
The expression produces a value of type:

nil | <<_::56, _::size(8)>>

but this value is unmatched.

________________________________________________________________________________
lib/test_weird_dialyzer.ex:13:5:unmatched_return
The expression produces a value of type:

<<_::56, _::size(8)>>

but this value is unmatched.

________________________________________________________________________________
done (warnings were emitted)
Halting VM with exit status 2
```
