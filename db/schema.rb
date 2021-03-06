# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161113041830) do

  create_table "cert_source_links", force: :cascade do |t|
    t.integer  "source_link_id",   limit: 4
    t.integer  "cert_store_id",    limit: 4
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "cert_source_links", ["deleted_at"], name: "index_cert_source_links_on_deleted_at"

  create_table "cert_store_roles", force: :cascade do |t|
    t.integer  "role_id",          limit: 4
    t.integer  "cert_store_id",    limit: 4
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "cert_store_roles", ["deleted_at"], name: "index_cert_store_roles_on_deleted_at"

  create_table "cert_stores", force: :cascade do |t|
    t.string   "CertStoreName",           limit: 4000
    t.string   "CertStoreDescription",    limit: 4000
    t.string   "CertStorePassword",       limit: 4000
    t.datetime "CertStoreExpirationDate"
    t.string   "unc",                     limit: 4000
    t.string   "MimeType",                limit: 4000
    t.integer  "Source_id",               limit: 4
    t.integer  "environment_id",          limit: 4
    t.integer  "identity_type_id",        limit: 4
    t.string   "CreatedBy",               limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",          limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.datetime "deleted_at"
  end

  add_index "cert_stores", ["deleted_at"], name: "index_cert_stores_on_deleted_at"

  create_table "environments", force: :cascade do |t|
    t.string   "EnvironmentName",        limit: 4000
    t.string   "EnvironmentDescription", limit: 4000
    t.string   "CreatedBy",              limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",         limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.datetime "deleted_at"
  end

  add_index "environments", ["deleted_at"], name: "index_environments_on_deleted_at"

  create_table "identity_types", force: :cascade do |t|
    t.string   "IdentityTypeName",        limit: 4000
    t.string   "IdentityTypeDescription", limit: 4000
    t.string   "CreatedBy",               limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",          limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.datetime "deleted_at"
  end

  add_index "identity_types", ["deleted_at"], name: "index_identity_types_on_deleted_at"

  create_table "member_groups", force: :cascade do |t|
    t.integer  "NetworkUser_id",   limit: 4
    t.integer  "UserGroup_id",     limit: 4
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "member_groups", ["deleted_at"], name: "index_member_groups_on_deleted_at"

  create_table "roles", force: :cascade do |t|
    t.string   "RoleDescription",  limit: 4000
    t.integer  "source_id",        limit: 4
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "roles", ["deleted_at"], name: "index_roles_on_deleted_at"

  create_table "source_links", force: :cascade do |t|
    t.string   "Hyperlink",        limit: 4000
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "source_links", ["deleted_at"], name: "index_source_links_on_deleted_at"

  create_table "sources", force: :cascade do |t|
    t.string   "SourceDescription", limit: 4000
    t.string   "CreatedBy",         limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",    limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.datetime "deleted_at"
  end

  add_index "sources", ["deleted_at"], name: "index_sources_on_deleted_at"

  create_table "store_accesses", force: :cascade do |t|
    t.string   "NetworkId",        limit: 4000
    t.integer  "user_store_id",    limit: 4
    t.integer  "cert_store_id",    limit: 4
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "store_accesses", ["deleted_at"], name: "index_store_accesses_on_deleted_at"

  create_table "teics_audit_logs", force: :cascade do |t|
    t.integer  "RecordId",         limit: 4
    t.string   "TableName",        limit: 4000
    t.string   "Attribute",        limit: 4000
    t.string   "PreviousValue",    limit: 4000
    t.string   "CurrentValue",     limit: 4000
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "teics_audit_logs", ["deleted_at"], name: "index_teics_audit_logs_on_deleted_at"

  create_table "user_access_audit_logs", force: :cascade do |t|
    t.integer  "RecordId",         limit: 4
    t.string   "TableName",        limit: 4000
    t.string   "Attribute",        limit: 4000
    t.string   "PreviousValue",    limit: 4000
    t.string   "CurrentValue",     limit: 4000
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "user_access_audit_logs", ["deleted_at"], name: "index_user_access_audit_logs_on_deleted_at"

  create_table "user_groups", force: :cascade do |t|
    t.string   "UserGroupName",    limit: 4000
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "user_groups", ["deleted_at"], name: "index_user_groups_on_deleted_at"

  create_table "user_source_links", force: :cascade do |t|
    t.integer  "source_link_id",   limit: 4
    t.integer  "user_store_id",    limit: 4
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "user_source_links", ["deleted_at"], name: "index_user_source_links_on_deleted_at"

  create_table "user_store_roles", force: :cascade do |t|
    t.integer  "role_id",          limit: 4
    t.integer  "user_store_id",    limit: 4
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "user_store_roles", ["deleted_at"], name: "index_user_store_roles_on_deleted_at"

  create_table "user_stores", force: :cascade do |t|
    t.string   "UserStoreName",           limit: 4000
    t.string   "UserStorePassword",       limit: 4000
    t.datetime "UserStoreExpirationDate"
    t.integer  "source_id",               limit: 4
    t.integer  "environment_id",          limit: 4
    t.integer  "identity_type_id",        limit: 4
    t.string   "CreatedBy",               limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",          limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.datetime "deleted_at"
  end

  add_index "user_stores", ["deleted_at"], name: "index_user_stores_on_deleted_at"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 4000, default: "", null: false
    t.string   "encrypted_password",     limit: 4000, default: "", null: false
    t.string   "reset_password_token",   limit: 4000
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 4000
    t.string   "last_sign_in_ip",        limit: 4000
    t.integer  "failed_attempts",        limit: 4,    default: 0,  null: false
    t.string   "unlock_token",           limit: 4000
    t.datetime "locked_at"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
