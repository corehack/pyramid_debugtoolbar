<table>
	<thead>
		<tr>
			<th>Key</th>
			<th>Value</th>
		</tr>
	</thead>
	<tbody>
		% for i, (key, value) in enumerate(settings):
			<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
				<td>${key|h}</td>
				<td>${value|h}</td>
			</tr>
		% endfor
	</tbody>
</table>
