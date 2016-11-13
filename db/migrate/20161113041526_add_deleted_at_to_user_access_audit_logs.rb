class AddDeletedAtToUserAccessAuditLogs < ActiveRecord::Migration
  def change
    add_column :user_access_audit_logs, :deleted_at, :datetime
    add_index :user_access_audit_logs, :deleted_at
  end
end
