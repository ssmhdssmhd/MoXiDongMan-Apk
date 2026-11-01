.class public final Lcom/google/common/collect/z1$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final new:I = -0x1


# instance fields
.field private final do:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TB;>;"
        }
    .end annotation
.end field

.field private for:I

.field private if:I


# direct methods
.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TB;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/common/collect/z1$if;->if:I

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lcom/google/common/collect/z1$if;->for:I

    .line 5
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/z1$if;->do:Ljava/util/Comparator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Comparator;Lcom/google/common/collect/z1$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$if;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public static synthetic do(Lcom/google/common/collect/z1$if;)Lcom/google/common/collect/k2;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/z1$if;->else()Lcom/google/common/collect/k2;

    move-result-object p0

    return-object p0
.end method

.method private else()Lcom/google/common/collect/k2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/common/collect/k2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z1$if;->do:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/k2;->from(Ljava/util/Comparator;)Lcom/google/common/collect/k2;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic if(Lcom/google/common/collect/z1$if;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/z1$if;->for:I

    return p0
.end method


# virtual methods
.method public case(I)Lcom/google/common/collect/z1$if;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/z1$if<",
            "TB;>;"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->new(Z)V

    .line 2
    iput p1, p0, Lcom/google/common/collect/z1$if;->for:I

    return-object p0
.end method

.method public for()Lcom/google/common/collect/z1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/common/collect/z1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/z1$if;->new(Ljava/lang/Iterable;)Lcom/google/common/collect/z1;

    move-result-object v0

    return-object v0
.end method

.method public new(Ljava/lang/Iterable;)Lcom/google/common/collect/z1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/google/common/collect/z1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/z1;

    iget v1, p0, Lcom/google/common/collect/z1$if;->if:I

    iget v2, p0, Lcom/google/common/collect/z1$if;->for:I

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/common/collect/z1;->super(IILjava/lang/Iterable;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/collect/z1;-><init>(Lcom/google/common/collect/z1$if;ILcom/google/common/collect/z1$do;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/common/collect/z1;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public try(I)Lcom/google/common/collect/z1$if;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/z1$if<",
            "TB;>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->new(Z)V

    .line 2
    iput p1, p0, Lcom/google/common/collect/z1$if;->if:I

    return-object p0
.end method
