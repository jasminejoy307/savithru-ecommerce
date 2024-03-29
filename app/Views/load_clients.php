<?php if($clients): ?>
    <?php foreach($clients as $data): ?>
        <div class="card mb-3">
        <h3><?php echo $data['client_name']; ?></h3>
        </div>
    <?php endforeach; ?>
<?php endif; ?>