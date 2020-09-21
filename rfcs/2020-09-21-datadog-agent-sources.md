# RFC #4052 - 2020-09-21 - DataDog Agent Sources

A pair of Source Components, Logs and Metrics, should be added to Vector to enable Vector to use the existing observability aggregation of the DataDog Agent.

## Scope

- The addition of the DataDog Agent Logs and Metrics Sources.
- Potential implications as acting as a DataDog Instance.

## Motivation

- People transitioning from a DataDog-centred observability stack currently must replace the DataDog Agent.

## Internal Proposal

The DataDog Agent doesn't use an open standard to communicate with DataDog instances. This imposes a sharper curve to transition to Vector, when their experience would otherwise be more flexible. In doing the minimum to emulate the DataDog instances, Vector can provide its full functionality without having to replace the DataDog Agent.

Replacing the DataDog Agent with Vector is a change that would require supporting the DataDog SDK, [completing host metric collection](https://github.com/timberio/vector/blob/master/rfcs/2020-08-26-3191-host-metrics.md), 

## Doc-level Proposal

- Add documentation for the new Sources
- Note that traces will be dropped until Vector supports them.

## Rationale

- Why is this change worth it?
- What is the impact of not doing this?
- How does this position us for success in the future?

## Prior Art

- List prior art, the good and bad.
- Why can't we simply use or copy them?

## Drawbacks

- Why should we not do this?
- What kind on ongoing burden does this place on the team?

## Alternatives

- What other approaches have been considered and why did you not choose them?
- How about not doing this at all?

## Outstanding Questions

- List any remaining questions that you have.
- These must be resolved before the RFC can be merged.

## Plan Of Attack

Incremental steps that execute this change. Generally this is in the form of:

- [ ] Submit a PR with spike-level code _roughly_ demonstrating the change.
- [ ] Incremental change #1
- [ ] Incremental change #2
- [ ] ...

Note: This can be filled out during the review process.
