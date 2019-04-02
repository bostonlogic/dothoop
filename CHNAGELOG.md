### 0.1.5 ###
* Added the ability to limit the `loops#all` call a single batch. This can be done by passing a `single_batch: true` option the call as one of the arguments. i.e. `client.loops.all(profile_id: 1234, batch_size: 1, single_batch: true)` to only return the a collection of 1 loop.

### 0.1.4 ###
* Bumping Faraday version to the 0.15.x range

### 0.1.3 ###
* Relax version dependency for Faraday

### 0.1.0 ###
* Added pagination to the `loops#all` call
* Added specs to `rooms#all` as well

### 0.0.2 ###
* Separated known errors into distinct error types including `Dothoop::UnauthorizedError` and `Dothoop::TooManyRequestsError`

### 0.0.1 ###
* Initial work to get a working gem
