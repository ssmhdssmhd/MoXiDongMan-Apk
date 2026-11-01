.class public abstract Lfreemarker/cache/static;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/static$if;,
        Lfreemarker/cache/static$for;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/cache/static$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/static;-><init>()V

    return-void
.end method

.method public static do()Lfreemarker/cache/static;
    .locals 1

    .line 1
    invoke-static {}, Lfreemarker/cache/static$if;->case()Lfreemarker/cache/static$if;

    move-result-object v0

    return-object v0
.end method

.method public static if(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/cache/static;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lfreemarker/cache/static$for;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/cache/static$for;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfreemarker/cache/static$do;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lfreemarker/cache/static;->do()Lfreemarker/cache/static;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract for()Ljava/lang/Object;
.end method

.method public abstract new()Ljava/lang/String;
.end method

.method public abstract try()Z
.end method
