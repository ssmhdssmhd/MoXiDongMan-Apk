.class public Lorg/greenrobot/greendao/generator/ToOne;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fkProperties:[Lorg/greenrobot/greendao/generator/Property;

.field private name:Ljava/lang/String;

.field private final resolvedKeyJavaType:[Ljava/lang/String;

.field private final resolvedKeyUseEquals:[Z

.field private final schema:Lorg/greenrobot/greendao/generator/Schema;

.field private final sourceEntity:Lorg/greenrobot/greendao/generator/Entity;

.field private final targetEntity:Lorg/greenrobot/greendao/generator/Entity;

.field private final useFkProperty:Z


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;[Lorg/greenrobot/greendao/generator/Property;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ToOne;->schema:Lorg/greenrobot/greendao/generator/Schema;

    .line 3
    iput-object p2, p0, Lorg/greenrobot/greendao/generator/ToOne;->sourceEntity:Lorg/greenrobot/greendao/generator/Entity;

    .line 4
    iput-object p3, p0, Lorg/greenrobot/greendao/generator/ToOne;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    .line 5
    iput-object p4, p0, Lorg/greenrobot/greendao/generator/ToOne;->fkProperties:[Lorg/greenrobot/greendao/generator/Property;

    .line 6
    iput-boolean p5, p0, Lorg/greenrobot/greendao/generator/ToOne;->useFkProperty:Z

    .line 7
    array-length p1, p4

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ToOne;->resolvedKeyJavaType:[Ljava/lang/String;

    .line 8
    array-length p1, p4

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ToOne;->resolvedKeyUseEquals:[Z

    return-void
.end method


# virtual methods
.method public checkUseEquals(Lorg/greenrobot/greendao/generator/PropertyType;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/ToOne$1;->$SwitchMap$org$greenrobot$greendao$generator$PropertyType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getFkProperties()[Lorg/greenrobot/greendao/generator/Property;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->fkProperties:[Lorg/greenrobot/greendao/generator/Property;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResolvedKeyJavaType()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->resolvedKeyJavaType:[Ljava/lang/String;

    return-object v0
.end method

.method public getResolvedKeyUseEquals()[Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->resolvedKeyUseEquals:[Z

    return-object v0
.end method

.method public getSourceEntity()Lorg/greenrobot/greendao/generator/Entity;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->sourceEntity:Lorg/greenrobot/greendao/generator/Entity;

    return-object v0
.end method

.method public getTargetEntity()Lorg/greenrobot/greendao/generator/Entity;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    return-object v0
.end method

.method public init2ndPass()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget-char v2, v0, v1

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v0, v1

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lorg/greenrobot/greendao/generator/ToOne;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public init3ndPass()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Entity;->getPkProperty()Lorg/greenrobot/greendao/generator/Property;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/ToOne;->fkProperties:[Lorg/greenrobot/greendao/generator/Property;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 3
    aget-object v1, v1, v2

    .line 4
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Property;->getPropertyType()Lorg/greenrobot/greendao/generator/PropertyType;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Property;->getPropertyType()Lorg/greenrobot/greendao/generator/PropertyType;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/generator/Property;->setPropertyType(Lorg/greenrobot/greendao/generator/PropertyType;)V

    .line 7
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Property;->init2ndPass()V

    .line 8
    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Property;->init3ndPass()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Property;->getPropertyType()Lorg/greenrobot/greendao/generator/PropertyType;

    move-result-object v0

    if-eq v3, v0, :cond_1

    .line 10
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning to-one property type does not match target key type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->resolvedKeyJavaType:[Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/ToOne;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/generator/Schema;->mapToJavaTypeNullable(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 12
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->resolvedKeyUseEquals:[Z

    invoke-virtual {p0, v3}, Lorg/greenrobot/greendao/generator/ToOne;->checkUseEquals(Lorg/greenrobot/greendao/generator/PropertyType;)Z

    move-result v1

    aput-boolean v1, v0, v2

    return-void

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently only single FK columns are supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isUseFkProperty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->useFkProperty:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ToOne;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToOne;->sourceEntity:Lorg/greenrobot/greendao/generator/Entity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lorg/greenrobot/greendao/generator/ToOne;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToOne \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/greenrobot/greendao/generator/ToOne;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
