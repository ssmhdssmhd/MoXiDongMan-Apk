.class public Landroid/support/v4/s00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/support/v4/r00<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final case:Ljava/lang/String; = "differs from"

.field public static final try:Ljava/lang/String; = ""


# instance fields
.field private final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/r00<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final for:Ljava/lang/Object;

.field private final if:Ljava/lang/Object;

.field private final new:Lorg/apache/commons/lang3/builder/case;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Lorg/apache/commons/lang3/builder/case;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Landroid/support/v4/r00<",
            "*>;>;",
            "Lorg/apache/commons/lang3/builder/case;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 2
    iput-object p3, p0, Landroid/support/v4/s00;->do:Ljava/util/List;

    .line 3
    iput-object p1, p0, Landroid/support/v4/s00;->if:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Landroid/support/v4/s00;->for:Ljava/lang/Object;

    if-nez p4, :cond_0

    .line 5
    sget-object p1, Lorg/apache/commons/lang3/builder/case;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/case;

    iput-object p1, p0, Landroid/support/v4/s00;->new:Lorg/apache/commons/lang3/builder/case;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p4, p0, Landroid/support/v4/s00;->new:Lorg/apache/commons/lang3/builder/case;

    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List of differences cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Right hand object cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left hand object cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/r00<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/s00;->do:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public for()Lorg/apache/commons/lang3/builder/case;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s00;->new:Lorg/apache/commons/lang3/builder/case;

    return-object v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s00;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/support/v4/r00<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/s00;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public new(Lorg/apache/commons/lang3/builder/case;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/s00;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/t72;

    iget-object v1, p0, Landroid/support/v4/s00;->if:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/t72;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;)V

    .line 3
    new-instance v1, Landroid/support/v4/t72;

    iget-object v2, p0, Landroid/support/v4/s00;->for:Ljava/lang/Object;

    invoke-direct {v1, v2, p1}, Landroid/support/v4/t72;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;)V

    .line 4
    iget-object p1, p0, Landroid/support/v4/s00;->do:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/r00;

    .line 5
    invoke-virtual {v2}, Landroid/support/v4/r00;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/pb1;->getLeft()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/t72;->final(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/t72;

    .line 6
    invoke-virtual {v2}, Landroid/support/v4/r00;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/pb1;->getRight()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/t72;->final(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/t72;

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0}, Landroid/support/v4/t72;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    const-string v2, "differs from"

    aput-object v2, p1, v0

    const/4 v0, 0x2

    invoke-virtual {v1}, Landroid/support/v4/t72;->k()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%s %s %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s00;->new:Lorg/apache/commons/lang3/builder/case;

    invoke-virtual {p0, v0}, Landroid/support/v4/s00;->new(Lorg/apache/commons/lang3/builder/case;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
