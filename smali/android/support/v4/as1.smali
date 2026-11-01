.class public Landroid/support/v4/as1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/seimicrawler/xpath/core/AxisSelector;",
            ">;"
        }
    .end annotation
.end field

.field private static for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/seimicrawler/xpath/core/Function;",
            ">;"
        }
    .end annotation
.end field

.field private static if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/seimicrawler/xpath/core/NodeTest;",
            ">;"
        }
    .end annotation
.end field

.field private static new:Lorg/slf4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/as1;->do:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/as1;->if:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/as1;->for:Ljava/util/Map;

    .line 4
    const-class v0, Landroid/support/v4/as1;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/as1;->new:Lorg/slf4j/Logger;

    const/16 v0, 0xe

    new-array v1, v0, [Ljava/lang/Class;

    .line 5
    const-class v2, Landroid/support/v4/q1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/support/v4/r1;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Landroid/support/v4/s4;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Landroid/support/v4/nl;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Landroid/support/v4/jz;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Landroid/support/v4/kz;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-class v2, Landroid/support/v4/ed0;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-class v2, Landroid/support/v4/fd0;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-class v2, Landroid/support/v4/gd0;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-class v2, Landroid/support/v4/gc1;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-class v2, Landroid/support/v4/xe1;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-class v2, Landroid/support/v4/ye1;

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-class v2, Landroid/support/v4/ze1;

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-class v2, Landroid/support/v4/ow1;

    const/16 v16, 0xd

    aput-object v2, v1, v16

    invoke-static {v1}, Landroid/support/v4/as1;->new([Ljava/lang/Class;)V

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Class;

    .line 6
    const-class v2, Landroid/support/v4/kq;

    aput-object v2, v1, v3

    const-class v2, Landroid/support/v4/br;

    aput-object v2, v1, v4

    const-class v2, Landroid/support/v4/as;

    aput-object v2, v1, v5

    const-class v2, Landroid/support/v4/gc0;

    aput-object v2, v1, v6

    const-class v2, Landroid/support/v4/bs0;

    aput-object v2, v1, v7

    const-class v2, Landroid/support/v4/i41;

    aput-object v2, v1, v8

    const-class v2, Landroid/support/v4/te1;

    aput-object v2, v1, v9

    const-class v2, Landroid/support/v4/l12;

    aput-object v2, v1, v10

    const-class v2, Landroid/support/v4/h22;

    aput-object v2, v1, v11

    const-class v2, Landroid/support/v4/o22;

    aput-object v2, v1, v12

    const-class v2, Landroid/support/v4/p22;

    aput-object v2, v1, v13

    const-class v2, Landroid/support/v4/r22;

    aput-object v2, v1, v14

    const-class v2, Landroid/support/v4/t22;

    aput-object v2, v1, v15

    const-class v2, Landroid/support/v4/kd0;

    aput-object v2, v1, v16

    const-class v2, Landroid/support/v4/q22;

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-class v2, Landroid/support/v4/s22;

    aput-object v2, v1, v0

    invoke-static {v1}, Landroid/support/v4/as1;->try([Ljava/lang/Class;)V

    new-array v0, v9, [Ljava/lang/Class;

    .line 7
    const-class v1, Landroid/support/v4/k1;

    aput-object v1, v0, v3

    const-class v1, Landroid/support/v4/jk0;

    aput-object v1, v0, v4

    const-class v1, Landroid/support/v4/x31;

    aput-object v1, v0, v5

    const-class v1, Landroid/support/v4/d51;

    aput-object v1, v0, v6

    const-class v1, Landroid/support/v4/d91;

    aput-object v1, v0, v7

    const-class v1, Landroid/support/v4/a62;

    aput-object v1, v0, v8

    invoke-static {v0}, Landroid/support/v4/as1;->case([Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs case([Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lorg/seimicrawler/xpath/core/NodeTest;",
            ">;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Landroid/support/v4/as1;->this(Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static do(Ljava/lang/String;)Lorg/seimicrawler/xpath/core/Function;
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/as1;->for:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seimicrawler/xpath/core/Function;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/s31;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/s31;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static else(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/seimicrawler/xpath/core/AxisSelector;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/seimicrawler/xpath/core/AxisSelector;

    .line 2
    sget-object v0, Landroid/support/v4/as1;->do:Ljava/util/Map;

    invoke-interface {p0}, Lorg/seimicrawler/xpath/core/AxisSelector;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Landroid/support/v4/as1;->new:Lorg/slf4j/Logger;

    invoke-static {p0}, Landroid/support/v4/r80;->else(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static for(Ljava/lang/String;)Lorg/seimicrawler/xpath/core/AxisSelector;
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/as1;->do:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seimicrawler/xpath/core/AxisSelector;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/p31;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support axis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/p31;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static goto(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/seimicrawler/xpath/core/Function;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/seimicrawler/xpath/core/Function;

    .line 2
    sget-object v0, Landroid/support/v4/as1;->for:Ljava/util/Map;

    invoke-interface {p0}, Lorg/seimicrawler/xpath/core/Function;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Landroid/support/v4/as1;->new:Lorg/slf4j/Logger;

    invoke-static {p0}, Landroid/support/v4/r80;->else(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static if(Ljava/lang/String;)Lorg/seimicrawler/xpath/core/NodeTest;
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/as1;->if:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seimicrawler/xpath/core/NodeTest;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/s31;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support nodeTest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/s31;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs new([Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lorg/seimicrawler/xpath/core/AxisSelector;",
            ">;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Landroid/support/v4/as1;->else(Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static this(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/seimicrawler/xpath/core/NodeTest;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/seimicrawler/xpath/core/NodeTest;

    .line 2
    sget-object v0, Landroid/support/v4/as1;->if:Ljava/util/Map;

    invoke-interface {p0}, Lorg/seimicrawler/xpath/core/NodeTest;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Landroid/support/v4/as1;->new:Lorg/slf4j/Logger;

    invoke-static {p0}, Landroid/support/v4/r80;->else(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static varargs try([Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lorg/seimicrawler/xpath/core/Function;",
            ">;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Landroid/support/v4/as1;->goto(Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
