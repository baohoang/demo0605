package vn.atpjsc.intern.demo.hibernate.entities;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "dynamic_tables")
public class DynamicTablesEntity implements DataEntity {
    private long id;
    private String name;
    private String description;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    @Id
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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
        DynamicTablesEntity that = (DynamicTablesEntity) o;
        return id == that.id && Objects.equals(name, that.name) && Objects.equals(description, that.description) && Objects.equals(createdAt, that.createdAt) && Objects.equals(updatedAt, that.updatedAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, description, createdAt, updatedAt);
    }

    @Override
    public String toString() {
        return "DynamicTablesEntity{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }

    private List<DynamicTableColumnsEntity> dynamicTableColumns;

    @OneToMany(mappedBy = "dynamicTables", fetch = FetchType.LAZY)
    public List<DynamicTableColumnsEntity> getDynamicTableColumns() {
        return dynamicTableColumns;
    }

    public void setDynamicTableColumns(List<DynamicTableColumnsEntity> dynamicTableColumns) {
        this.dynamicTableColumns = dynamicTableColumns;
    }
}
