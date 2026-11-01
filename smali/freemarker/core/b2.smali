.class Lfreemarker/core/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Ljava/lang/String; = "false"

.field public static final if:Ljava/lang/String; = "true"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lfreemarker/core/h0;)Lfreemarker/core/h0;
    .locals 1

    .line 1
    :goto_0
    instance-of v0, p0, Lfreemarker/core/g3;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lfreemarker/core/g3;

    invoke-virtual {p0}, Lfreemarker/core/g3;->d()Lfreemarker/core/h0;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static if(Ljava/util/Map;)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance p0, Lfreemarker/core/b2$do;

    invoke-direct {p0}, Lfreemarker/core/b2$do;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
