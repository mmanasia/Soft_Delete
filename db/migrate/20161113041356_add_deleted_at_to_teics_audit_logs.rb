class AddDeletedAtToTeicsAuditLogs < ActiveRecord::Migration
  def change
    add_column :teics_audit_logs, :deleted_at, :datetime
    add_index :teics_audit_logs, :deleted_at
  end
end
