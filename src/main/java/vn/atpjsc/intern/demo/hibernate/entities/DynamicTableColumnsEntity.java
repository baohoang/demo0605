package vn.atpjsc.intern.demo.hibernate.entities;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "dynamic_table_columns")
public class DynamicTableColumnsEntity implements DataEntity {
    private long id;
    private long tableId;
    private String name;
    private String description;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "table_id")
    public long getTableId() {
        return tableId;
    }

    public void setTableId(long tableId) {
        this.tableId = tableId;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "created_at")
    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    @Basic
    @Column(name = "updated_at")
    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DynamicTableColumnsEntity that = (DynamicTableColumnsEntity) o;
        return id == that.id && tableId == that.tableId && Objects.equals(name, that.name) && Objects.equals(description, that.description) && Objects.equals(createdAt, that.createdAt) && Objects.equals(updatedAt, that.updatedAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, tableId, name, description, createdAt, updatedAt);
    }

    @Override
    public String toString() {
        return "DynamicTableColumnsEntity{" +
                "id=" + id +
                ", tableId=" + tableId +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }

    private DynamicTablesEntity dynamicTables;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "table_id", insertable = false, updatable = false)
    public DynamicTablesEntity getDynamicTables() {
        return dynamicTables;
    }

    public void setDynamicTables(DynamicTablesEntity dynamicTables) {
        this.dynamicTables = dynamicTables;
    }
}
