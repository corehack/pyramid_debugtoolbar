<h4>Request Headers</h4>
<table>
	<thead>
		<tr>
			<th>Key</th>
			<th>Value</th>
		</tr>
	</thead>
	<tbody>
		% for i, (key, value) in enumerate(request_headers):
			<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
				<td>${key|h}</td>
				<td>${value|h}</td>
			</tr>
		% endfor
	</tbody>
</table>

<h4>Response Headers</h4>
<table>
	<thead>
		<tr>
			<th>Key</th>
			<th>Value</th>
		</tr>
	</thead>
	<tbody>
		% for i, (key, value) in enumerate(response_headers):
			<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
				<td>${key|h}</td>
				<td>${value|h}</td>
			</tr>
		% endfor
	</tbody>
</table>
