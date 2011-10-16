<h4>Cookie Variables</h4>
% if cookies:
	<table>
		<colgroup>
			<col style="width:20%"/>
			<col/>
		</colgroup>
		<thead>
			<tr>
				<th>Variable</th>
				<th>Value</th>
			</tr>
		</thead>
		<tbody>
			% for i, (key, value) in enumerate(cookies):
				<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
					<td>${key|h}</td>
					<td>${value|h}</td>
				</tr>
			% endfor
		</tbody>
	</table>
% else:
	<p>No cookie data</p>
% endif

<h4>Session Variables</h4>
% if session:
	<table>
		<colgroup>
			<col style="width:20%"/>
			<col/>
		</colgroup>
		<thead>
			<tr>
				<th>Variable</th>
				<th>Value</th>
			</tr>
		</thead>
		<tbody>
			% for i, (key, value) in enumerate(session):
				<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
					<td>${key|h}</td>
					<td>${value|h}</td>
				</tr>
			% endfor
		</tbody>
	</table>
% else:
	<p>No session data</p>
% endif

<h4>GET Variables</h4>
% if get:
	<table>
		<thead>
			<tr>
				<th>Variable</th>
				<th>Value</th>
			</tr>
		</thead>
		<tbody>
			% for i, (key, value) in enumerate(get):
				<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
					<td>${key|h }}</td>
					<td>${value.join(", ")|h}</td>
				</tr>
			% endfor
		</tbody>
	</table>
% else:
	<p>No GET data</p>
% endif

<h4>POST Variables</h4>
% if post:
	<table>
		<thead>
			<tr>
				<th>Variable</th>
				<th>Value</th>
			</tr>
		</thead>
		<tbody>
			% for i, (key, value) in enumerate(post):
				<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
					<td>${key|h}</td>
					<td>${value.join(", ")|h}</td>
				</tr>
			% endfor
		</tbody>
	</table>
% else:
	<p>No POST data</p>
% endif

<h4>Request attributes</h4>
% if attrs:
	<table>
		<thead>
			<tr>
				<th>Attribute</th>
				<th>Value</th>
			</tr>
		</thead>
		<tbody>
			% for i, (key, value) in enumerate(attrs):
				<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
					<td>${key|h}</td>
					<td>${value|h}</td>
				</tr>
			% endfor
		</tbody>
	</table>
% else:
	<p>No request attributes</p>
% endif

<h4>Request environ</h4>
% if environ:
	<table>
		<thead>
			<tr>
				<th>Attribute</th>
				<th>Value</th>
			</tr>
		</thead>
		<tbody>
			% for i, (key, value) in enumerate(environ):
				<tr class="${i%2 and 'pDebugEven' or 'pDebugOdd'}">
					<td>${key|h}</td>
					<td>${value|h}</td>
				</tr>
			% endfor
		</tbody>
	</table>
% else:
	<p>No request environ</p>
% endif
