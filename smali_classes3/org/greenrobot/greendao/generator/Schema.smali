.class public Lorg/greenrobot/greendao/generator/Schema;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "default"


# instance fields
.field private final defaultJavaPackage:Ljava/lang/String;

.field private defaultJavaPackageDao:Ljava/lang/String;

.field private defaultJavaPackageTest:Ljava/lang/String;

.field private final entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private hasKeepSectionsByDefault:Z

.field private final name:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private propertyToDbType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/greenrobot/greendao/generator/PropertyType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private propertyToJavaTypeNotNull:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/greenrobot/greendao/generator/PropertyType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private propertyToJavaTypeNullable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/greenrobot/greendao/generator/PropertyType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useActiveEntitiesByDefault:Z

.field private final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 8
    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/generator/Schema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->name:Ljava/lang/String;

    const-string v0, "default"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/greenrobot/greendao/generator/DaoUtil;->capFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->prefix:Ljava/lang/String;

    .line 4
    iput p2, p0, Lorg/greenrobot/greendao/generator/Schema;->version:I

    .line 5
    iput-object p3, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackage:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->entities:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lorg/greenrobot/greendao/generator/Schema;->initTypeMappings()V

    return-void
.end method

.method private initTypeMappings()V
    .locals 15

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    .line 2
    sget-object v1, Lorg/greenrobot/greendao/generator/PropertyType;->Boolean:Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v3, Lorg/greenrobot/greendao/generator/PropertyType;->Byte:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v4, Lorg/greenrobot/greendao/generator/PropertyType;->Short:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v5, Lorg/greenrobot/greendao/generator/PropertyType;->Int:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v6, Lorg/greenrobot/greendao/generator/PropertyType;->Long:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v7, Lorg/greenrobot/greendao/generator/PropertyType;->Float:Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v8, "REAL"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v9, Lorg/greenrobot/greendao/generator/PropertyType;->Double:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v8, Lorg/greenrobot/greendao/generator/PropertyType;->String:Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v10, "TEXT"

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v10, Lorg/greenrobot/greendao/generator/PropertyType;->ByteArray:Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v11, "BLOB"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v11, Lorg/greenrobot/greendao/generator/PropertyType;->Date:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "boolean"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "byte"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "short"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "int"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "long"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "float"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "double"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "String"

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v12, "byte[]"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v13, "java.util.Date"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v14, "Boolean"

    .line 24
    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Byte"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Short"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Integer"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Long"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Float"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Double"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private mapType(Ljava/util/Map;Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/greenrobot/greendao/generator/PropertyType;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/greenrobot/greendao/generator/PropertyType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No mapping for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addEntity(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Entity;
    .locals 1

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/generator/Entity;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/generator/Entity;-><init>(Lorg/greenrobot/greendao/generator/Schema;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->entities:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addProtobufEntity(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Entity;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/generator/Schema;->addEntity(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Entity;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/greenrobot/greendao/generator/Entity;->useProtobuf()Lorg/greenrobot/greendao/generator/Entity;

    return-object p1
.end method

.method public enableActiveEntitiesByDefault()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/greenrobot/greendao/generator/Schema;->useActiveEntitiesByDefault:Z

    return-void
.end method

.method public enableKeepSectionsByDefault()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/greenrobot/greendao/generator/Schema;->hasKeepSectionsByDefault:Z

    return-void
.end method

.method public getDefaultJavaPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultJavaPackageDao()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageDao:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultJavaPackageTest()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageTest:Ljava/lang/String;

    return-object v0
.end method

.method public getEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Entity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->entities:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/generator/Schema;->version:I

    return v0
.end method

.method public init2ndPass()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageDao:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackage:Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageDao:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageTest:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageDao:Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageTest:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/generator/Entity;

    .line 6
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Entity;->init2ndPass()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public init3rdPass()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/generator/Entity;

    .line 2
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Entity;->init3rdPass()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isHasKeepSectionsByDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Schema;->hasKeepSectionsByDefault:Z

    return v0
.end method

.method public isUseActiveEntitiesByDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Schema;->useActiveEntitiesByDefault:Z

    return v0
.end method

.method public mapToDbType(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Schema;->mapType(Ljava/util/Map;Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapToJavaTypeNotNull(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Schema;->mapType(Ljava/util/Map;Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapToJavaTypeNullable(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Schema;->mapType(Ljava/util/Map;Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultJavaPackageDao(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageDao:Ljava/lang/String;

    return-void
.end method

.method public setDefaultJavaPackageTest(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageTest:Ljava/lang/String;

    return-void
.end method
