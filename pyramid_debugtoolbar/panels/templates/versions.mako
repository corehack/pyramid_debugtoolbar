<h4>Platform</h4>
<div>${platform}</div>

<h4>Packages</h4>

<table>
	<thead>
		<tr>
			<th>Package Name</th>
			<th>Version</th>
		</tr>
	</thead>
	<tbody>
		% for i, package in enumerate(packages):
			<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
				<td>${package['name']|h}</td>
				<td>${package['version']|h}</td>
			</tr>
		% endfor
	</tbody>
</table>
