.class public Lfreemarker/core/d5;
.super Landroid/support/v4/xl2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/d5$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/xl2<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final do:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final if:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/xl2;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/d5;->do:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Lfreemarker/core/d5;->if:Ljava/util/Set;

    return-void
.end method

.method public static synthetic do(Lfreemarker/core/d5;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/d5;->do:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic if(Lfreemarker/core/d5;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/d5;->if:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d5;->do:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/d5;->if:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/d5$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/core/d5$if;-><init>(Lfreemarker/core/d5;Lfreemarker/core/d5$do;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/d5;->do:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lfreemarker/core/d5;->if:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
