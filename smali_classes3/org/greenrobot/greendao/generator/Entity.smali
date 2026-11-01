.class public Lorg/greenrobot/greendao/generator/Entity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private active:Ljava/lang/Boolean;

.field private final additionalImportsDao:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final additionalImportsEntity:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final className:Ljava/lang/String;

.field private classNameDao:Ljava/lang/String;

.field private classNameTest:Ljava/lang/String;

.field private codeBeforeClass:Ljava/lang/String;

.field private constructors:Z

.field private final contentProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/ContentProvider;",
            ">;"
        }
    .end annotation
.end field

.field private dbName:Ljava/lang/String;

.field private hasKeepSections:Ljava/lang/Boolean;

.field private final incomingToManyRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/ToManyBase;",
            ">;"
        }
    .end annotation
.end field

.field private final indexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Index;",
            ">;"
        }
    .end annotation
.end field

.field private final interfacesToImplement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private javaDoc:Ljava/lang/String;

.field private javaPackage:Ljava/lang/String;

.field private javaPackageDao:Ljava/lang/String;

.field private javaPackageTest:Ljava/lang/String;

.field private final multiIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Index;",
            ">;"
        }
    .end annotation
.end field

.field private nonDefaultDbName:Z

.field private pkProperty:Lorg/greenrobot/greendao/generator/Property;

.field private pkType:Ljava/lang/String;

.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Property;",
            ">;"
        }
    .end annotation
.end field

.field private propertiesColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final propertiesNonPk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final propertiesPk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private protobuf:Z

.field private final schema:Lorg/greenrobot/greendao/generator/Schema;

.field private skipCreationInDb:Z

.field private skipGeneration:Z

.field private skipGenerationTest:Z

.field private superclass:Ljava/lang/String;

.field private final toManyRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/ToManyBase;",
            ">;"
        }
    .end annotation
.end field

.field private final toOneRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/ToOne;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/generator/Schema;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    .line 3
    iput-object p2, p0, Lorg/greenrobot/greendao/generator/Entity;->className:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->properties:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesPk:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesNonPk:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->propertyNames:Ljava/util/Set;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->indexes:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->multiIndexes:Ljava/util/List;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->toOneRelations:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->toManyRelations:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->incomingToManyRelations:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsEntity:Ljava/util/Collection;

    .line 14
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsDao:Ljava/util/Collection;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->interfacesToImplement:Ljava/util/List;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->contentProviders:Ljava/util/List;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Entity;->constructors:Z

    return-void
.end method

.method private checkAdditionalImportsDaoTargetEntity(Lorg/greenrobot/greendao/generator/Entity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/greenrobot/greendao/generator/Entity;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageDao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsDao:Ljava/util/Collection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/greenrobot/greendao/generator/Entity;->getJavaPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private checkAdditionalImportsEntityTargetEntity(Lorg/greenrobot/greendao/generator/Entity;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/greenrobot/greendao/generator/Entity;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "."

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsEntity:Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/greenrobot/greendao/generator/Entity;->getJavaPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/greenrobot/greendao/generator/Entity;->getJavaPackageDao()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsEntity:Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/greenrobot/greendao/generator/Entity;->getJavaPackageDao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/generator/Entity;->getClassNameDao()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private init3rdPassAdditionalImports()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->active:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageDao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsEntity:Ljava/util/Collection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageDao:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->classNameDao:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->toOneRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/generator/ToOne;

    .line 4
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/ToOne;->getTargetEntity()Lorg/greenrobot/greendao/generator/Entity;

    move-result-object v1

    .line 5
    invoke-direct {p0, v1}, Lorg/greenrobot/greendao/generator/Entity;->checkAdditionalImportsEntityTargetEntity(Lorg/greenrobot/greendao/generator/Entity;)V

    .line 6
    invoke-direct {p0, v1}, Lorg/greenrobot/greendao/generator/Entity;->checkAdditionalImportsDaoTargetEntity(Lorg/greenrobot/greendao/generator/Entity;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->toManyRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/generator/ToManyBase;

    .line 8
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/ToManyBase;->getTargetEntity()Lorg/greenrobot/greendao/generator/Entity;

    move-result-object v1

    .line 9
    invoke-direct {p0, v1}, Lorg/greenrobot/greendao/generator/Entity;->checkAdditionalImportsEntityTargetEntity(Lorg/greenrobot/greendao/generator/Entity;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->incomingToManyRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/generator/ToManyBase;

    .line 11
    instance-of v2, v1, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;

    if-eqz v2, :cond_3

    .line 12
    check-cast v1, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;

    .line 13
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;->getJoinEntity()Lorg/greenrobot/greendao/generator/Entity;

    move-result-object v1

    .line 14
    invoke-direct {p0, v1}, Lorg/greenrobot/greendao/generator/Entity;->checkAdditionalImportsDaoTargetEntity(Lorg/greenrobot/greendao/generator/Entity;)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/generator/Property;

    .line 16
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Property;->getCustomType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 17
    invoke-static {v2}, Lorg/greenrobot/greendao/generator/DaoUtil;->getPackageFromFullyQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 18
    iget-object v4, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 19
    iget-object v4, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsEntity:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v3, :cond_7

    .line 20
    iget-object v4, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageDao:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 21
    iget-object v3, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsDao:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_7
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Property;->getConverter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-static {v1}, Lorg/greenrobot/greendao/generator/DaoUtil;->getPackageFromFullyQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 24
    iget-object v3, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageDao:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 25
    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsDao:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-void
.end method

.method private init3rdPassRelations()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->toOneRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Duplicate name for "

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/generator/ToOne;

    .line 3
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/ToOne;->init3ndPass()V

    .line 4
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/ToOne;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->toManyRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/generator/ToManyBase;

    .line 8
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/ToManyBase;->init3rdPass()V

    .line 9
    instance-of v4, v2, Lorg/greenrobot/greendao/generator/ToMany;

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/ToManyBase;->getTargetEntity()Lorg/greenrobot/greendao/generator/Entity;

    move-result-object v4

    .line 11
    move-object v5, v2

    check-cast v5, Lorg/greenrobot/greendao/generator/ToMany;

    invoke-virtual {v5}, Lorg/greenrobot/greendao/generator/ToMany;->getTargetProperties()[Lorg/greenrobot/greendao/generator/Property;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 12
    iget-object v9, v4, Lorg/greenrobot/greendao/generator/Entity;->propertiesColumns:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 13
    iget-object v9, v4, Lorg/greenrobot/greendao/generator/Entity;->propertiesColumns:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/ToManyBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method


# virtual methods
.method public addBooleanProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->Boolean:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Entity;->addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addByteArrayProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->ByteArray:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Entity;->addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addByteProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->Byte:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Entity;->addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addContentProvider()Lorg/greenrobot/greendao/generator/ContentProvider;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lorg/greenrobot/greendao/generator/ContentProvider;

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/generator/ContentProvider;-><init>(Lorg/greenrobot/greendao/generator/Schema;Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->contentProviders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public addDateProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->Date:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Entity;->addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addDoubleProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->Double:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Entity;->addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addFloatProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->Float:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Entity;->addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addIdProperty()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    const-string v0, "id"

    .line 1
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/generator/Entity;->addLongProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object v0

    const-string v1, "_id"

    .line 2
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->dbName(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->primaryKey()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    return-object v0
.end method

.method public addImport(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Entity;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsEntity:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addIncomingToMany(Lorg/greenrobot/greendao/generator/ToMany;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->incomingToManyRelations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIndex(Lorg/greenrobot/greendao/generator/Index;)Lorg/greenrobot/greendao/generator/Entity;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->indexes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addIntProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->Int:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Entity;->addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addLongProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->Long:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Entity;->addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->propertyNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;-><init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->properties:Ljava/util/List;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->getProperty()Lorg/greenrobot/greendao/generator/Property;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property already defined: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addShortProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->Short:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Entity;->addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addStringProperty(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->String:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Entity;->addProperty(Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addToMany(Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/ToMany;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/greenrobot/greendao/generator/Property;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p2, p1, v0}, Lorg/greenrobot/greendao/generator/Entity;->addToMany([Lorg/greenrobot/greendao/generator/Property;Lorg/greenrobot/greendao/generator/Entity;[Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/ToMany;

    move-result-object p1

    return-object p1
.end method

.method public addToMany(Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/ToMany;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/generator/Entity;->addToMany(Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/ToMany;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3}, Lorg/greenrobot/greendao/generator/ToManyBase;->setName(Ljava/lang/String;)V

    return-object p1
.end method

.method public addToMany(Lorg/greenrobot/greendao/generator/Property;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/ToMany;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/greenrobot/greendao/generator/Property;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Lorg/greenrobot/greendao/generator/Property;

    aput-object p3, p1, v2

    .line 4
    invoke-virtual {p0, v1, p2, p1}, Lorg/greenrobot/greendao/generator/Entity;->addToMany([Lorg/greenrobot/greendao/generator/Property;Lorg/greenrobot/greendao/generator/Entity;[Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/ToMany;

    move-result-object p1

    return-object p1
.end method

.method public addToMany([Lorg/greenrobot/greendao/generator/Property;Lorg/greenrobot/greendao/generator/Entity;[Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/ToMany;
    .locals 7

    .line 5
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Entity;->protobuf:Z

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lorg/greenrobot/greendao/generator/ToMany;

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/generator/ToMany;-><init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;[Lorg/greenrobot/greendao/generator/Property;Lorg/greenrobot/greendao/generator/Entity;[Lorg/greenrobot/greendao/generator/Property;)V

    .line 7
    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->toManyRelations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p2, Lorg/greenrobot/greendao/generator/Entity;->incomingToManyRelations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Protobuf entities do not support relations, currently"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addToMany(Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Property;Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;
    .locals 8

    .line 10
    new-instance v7, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;-><init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Property;Lorg/greenrobot/greendao/generator/Property;)V

    .line 11
    iget-object p2, p0, Lorg/greenrobot/greendao/generator/Entity;->toManyRelations:Ljava/util/List;

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p1, Lorg/greenrobot/greendao/generator/Entity;->incomingToManyRelations:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public addToOne(Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/ToOne;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Entity;->protobuf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v5, v0, [Lorg/greenrobot/greendao/generator/Property;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    .line 2
    new-instance p2, Lorg/greenrobot/greendao/generator/ToOne;

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    const/4 v6, 0x1

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/generator/ToOne;-><init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;[Lorg/greenrobot/greendao/generator/Property;Z)V

    .line 3
    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->toOneRelations:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Protobuf entities do not support realtions, currently"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addToOne(Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/ToOne;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/generator/Entity;->addToOne(Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/ToOne;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p3}, Lorg/greenrobot/greendao/generator/ToOne;->setName(Ljava/lang/String;)V

    return-object p1
.end method

.method public addToOneWithoutProperty(Ljava/lang/String;Lorg/greenrobot/greendao/generator/Entity;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/ToOne;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/greenrobot/greendao/generator/Entity;->addToOneWithoutProperty(Ljava/lang/String;Lorg/greenrobot/greendao/generator/Entity;Ljava/lang/String;ZZ)Lorg/greenrobot/greendao/generator/ToOne;

    move-result-object p1

    return-object p1
.end method

.method public addToOneWithoutProperty(Ljava/lang/String;Lorg/greenrobot/greendao/generator/Entity;Ljava/lang/String;ZZ)Lorg/greenrobot/greendao/generator/ToOne;
    .locals 6

    .line 2
    new-instance v0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;-><init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->notNull()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    :cond_0
    if-eqz p5, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->unique()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    .line 5
    :cond_1
    invoke-virtual {v0, p3}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->dbName(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    .line 6
    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->getProperty()Lorg/greenrobot/greendao/generator/Property;

    move-result-object p3

    const/4 p4, 0x1

    new-array v4, p4, [Lorg/greenrobot/greendao/generator/Property;

    const/4 p4, 0x0

    aput-object p3, v4, p4

    .line 7
    new-instance p3, Lorg/greenrobot/greendao/generator/ToOne;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/generator/ToOne;-><init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;[Lorg/greenrobot/greendao/generator/Property;Z)V

    .line 8
    invoke-virtual {p3, p1}, Lorg/greenrobot/greendao/generator/ToOne;->setName(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->toOneRelations:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method public getActive()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAdditionalImportsDao()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsDao:Ljava/util/Collection;

    return-object v0
.end method

.method public getAdditionalImportsEntity()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->additionalImportsEntity:Ljava/util/Collection;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getClassNameDao()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->classNameDao:Ljava/lang/String;

    return-object v0
.end method

.method public getClassNameTest()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->classNameTest:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeBeforeClass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->codeBeforeClass:Ljava/lang/String;

    return-object v0
.end method

.method public getContentProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/ContentProvider;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->contentProviders:Ljava/util/List;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getHasKeepSections()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->hasKeepSections:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIncomingToManyRelations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/ToManyBase;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->incomingToManyRelations:Ljava/util/List;

    return-object v0
.end method

.method public getIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Index;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->indexes:Ljava/util/List;

    return-object v0
.end method

.method public getInterfacesToImplement()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->interfacesToImplement:Ljava/util/List;

    return-object v0
.end method

.method public getJavaDoc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaDoc:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaPackageDao()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageDao:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaPackageTest()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageTest:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Index;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->multiIndexes:Ljava/util/List;

    return-object v0
.end method

.method public getPkProperty()Lorg/greenrobot/greendao/generator/Property;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->pkProperty:Lorg/greenrobot/greendao/generator/Property;

    return-object v0
.end method

.method public getPkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->pkType:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Property;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getPropertiesColumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Property;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesColumns:Ljava/util/List;

    return-object v0
.end method

.method public getPropertiesNonPk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Property;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesNonPk:Ljava/util/List;

    return-object v0
.end method

.method public getPropertiesPk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Property;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesPk:Ljava/util/List;

    return-object v0
.end method

.method public getSchema()Lorg/greenrobot/greendao/generator/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->superclass:Ljava/lang/String;

    return-object v0
.end method

.method public getToManyRelations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/ToManyBase;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->toManyRelations:Ljava/util/List;

    return-object v0
.end method

.method public getToOneRelations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/ToOne;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->toOneRelations:Ljava/util/List;

    return-object v0
.end method

.method public varargs implementsInterface([Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lorg/greenrobot/greendao/generator/Entity;->interfacesToImplement:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, p0, Lorg/greenrobot/greendao/generator/Entity;->interfacesToImplement:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interface defined more than once: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public implementsSerializable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->interfacesToImplement:Ljava/util/List;

    const-string v1, "java.io.Serializable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public init2ndPass()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/generator/Entity;->init2ndPassNamesWithDefaults()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->properties:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/generator/Property;

    .line 4
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/generator/Property;->setOrdinal(I)V

    .line 5
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/Property;->init2ndPass()V

    .line 6
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/Property;->isPrimaryKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesPk:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_0
    iget-object v3, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesNonPk:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_2
    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->indexes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 10
    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->indexes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/generator/Index;

    .line 11
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->getProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 12
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->getProperties()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/greendao/generator/Property;

    .line 13
    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/generator/Property;->setIndex(Lorg/greenrobot/greendao/generator/Index;)V

    goto :goto_3

    :cond_2
    if-le v4, v3, :cond_3

    .line 14
    iget-object v3, p0, Lorg/greenrobot/greendao/generator/Entity;->multiIndexes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_4
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesPk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 16
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesPk:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/generator/Property;

    iput-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->pkProperty:Lorg/greenrobot/greendao/generator/Property;

    .line 17
    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Property;->getPropertyType()Lorg/greenrobot/greendao/generator/PropertyType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/generator/Schema;->mapToJavaTypeNullable(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->pkType:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const-string v1, "Void"

    .line 18
    iput-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->pkType:Ljava/lang/String;

    .line 19
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->properties:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesColumns:Ljava/util/List;

    .line 20
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->toOneRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/generator/ToOne;

    .line 21
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/ToOne;->init2ndPass()V

    .line 22
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/ToOne;->getFkProperties()[Lorg/greenrobot/greendao/generator/Property;

    move-result-object v2

    .line 23
    array-length v4, v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    .line 24
    iget-object v7, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesColumns:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 25
    iget-object v7, p0, Lorg/greenrobot/greendao/generator/Entity;->propertiesColumns:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 26
    :cond_8
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->toManyRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/generator/ToManyBase;

    .line 27
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/ToManyBase;->init2ndPass()V

    goto :goto_6

    .line 28
    :cond_9
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->active:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 29
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Schema;->isUseActiveEntitiesByDefault()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->active:Ljava/lang/Boolean;

    .line 30
    :cond_a
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->active:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->toOneRelations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->toManyRelations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->active:Ljava/lang/Boolean;

    .line 31
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->hasKeepSections:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 32
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Schema;->isHasKeepSectionsByDefault()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->hasKeepSections:Ljava/lang/Boolean;

    .line 33
    :cond_d
    invoke-virtual {p0}, Lorg/greenrobot/greendao/generator/Entity;->init2ndPassIndexNamesWithDefaults()V

    .line 34
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->contentProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/generator/ContentProvider;

    .line 35
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/ContentProvider;->init2ndPass()V

    goto :goto_7

    :cond_e
    return-void
.end method

.method public init2ndPassIndexNamesWithDefaults()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->indexes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Entity;->indexes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/generator/Index;

    .line 3
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/Index;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDX_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/generator/Entity;->getDbName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->getProperties()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 6
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 7
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/greenrobot/greendao/generator/Property;

    .line 8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/greenrobot/greendao/generator/Property;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->getPropertiesOrder()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "DESC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_DESC"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/generator/Index;->setDefaultName(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public init2ndPassNamesWithDefaults()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->dbName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->className:Ljava/lang/String;

    invoke-static {v0}, Lorg/greenrobot/greendao/generator/DaoUtil;->dbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->dbName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/greenrobot/greendao/generator/Entity;->nonDefaultDbName:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->classNameDao:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Dao"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->classNameDao:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->classNameTest:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->classNameTest:Ljava/lang/String;

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Schema;->getDefaultJavaPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    .line 10
    :cond_3
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageDao:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Schema;->getDefaultJavaPackageDao()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageDao:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageDao:Ljava/lang/String;

    .line 13
    :cond_4
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageTest:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 14
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Schema;->getDefaultJavaPackageTest()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageTest:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 15
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageTest:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public init3rdPass()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/generator/Property;

    .line 2
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Property;->init3ndPass()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/greenrobot/greendao/generator/Entity;->init3rdPassRelations()V

    .line 4
    invoke-direct {p0}, Lorg/greenrobot/greendao/generator/Entity;->init3rdPassAdditionalImports()V

    return-void
.end method

.method public isConstructors()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Entity;->constructors:Z

    return v0
.end method

.method public isNonDefaultDbName()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Entity;->nonDefaultDbName:Z

    return v0
.end method

.method public isProtobuf()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Entity;->protobuf:Z

    return v0
.end method

.method public isSkipCreationInDb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Entity;->skipCreationInDb:Z

    return v0
.end method

.method public isSkipGeneration()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Entity;->skipGeneration:Z

    return v0
.end method

.method public isSkipGenerationTest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Entity;->skipGenerationTest:Z

    return v0
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->active:Ljava/lang/Boolean;

    return-void
.end method

.method public setClassNameDao(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->classNameDao:Ljava/lang/String;

    return-void
.end method

.method public setClassNameTest(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->classNameTest:Ljava/lang/String;

    return-void
.end method

.method public setCodeBeforeClass(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->codeBeforeClass:Ljava/lang/String;

    return-void
.end method

.method public setConstructors(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Entity;->constructors:Z

    return-void
.end method

.method public setDbName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->dbName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Entity;->nonDefaultDbName:Z

    return-void
.end method

.method public setHasKeepSections(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->hasKeepSections:Ljava/lang/Boolean;

    return-void
.end method

.method public setJavaDoc(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p1, v0}, Lorg/greenrobot/greendao/generator/DaoUtil;->checkConvertToJavaDoc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->javaDoc:Ljava/lang/String;

    return-void
.end method

.method public setJavaPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    return-void
.end method

.method public setJavaPackageDao(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageDao:Ljava/lang/String;

    return-void
.end method

.method public setJavaPackageTest(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackageTest:Ljava/lang/String;

    return-void
.end method

.method public setSkipCreationInDb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Entity;->skipCreationInDb:Z

    return-void
.end method

.method public setSkipGeneration(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Entity;->skipGeneration:Z

    return-void
.end method

.method public setSkipGenerationTest(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Entity;->skipGenerationTest:Z

    return-void
.end method

.method public setSkipTableCreation(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/generator/Entity;->setSkipCreationInDb(Z)V

    return-void
.end method

.method public setSuperclass(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Entity;->superclass:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/generator/Entity;->setDbName(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Entity;->javaPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useProtobuf()Lorg/greenrobot/greendao/generator/Entity;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/greenrobot/greendao/generator/Entity;->protobuf:Z

    return-object p0
.end method

.method public validatePropertyExists(Lorg/greenrobot/greendao/generator/Property;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Entity;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
