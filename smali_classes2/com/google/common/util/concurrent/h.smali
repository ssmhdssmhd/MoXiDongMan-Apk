.class public abstract Lcom/google/common/util/concurrent/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/h$break;,
        Lcom/google/common/util/concurrent/h$this;,
        Lcom/google/common/util/concurrent/h$goto;,
        Lcom/google/common/util/concurrent/h$class;,
        Lcom/google/common/util/concurrent/h$else;,
        Lcom/google/common/util/concurrent/h$catch;,
        Lcom/google/common/util/concurrent/h$const;,
        Lcom/google/common/util/concurrent/h$final;,
        Lcom/google/common/util/concurrent/h$super;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final do:I = 0x400

.field private static final for:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private static final if:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private static final new:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h$try;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h$try;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/h;->if:Lcom/google/common/base/Supplier;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/h$case;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h$case;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/h;->for:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/h$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/h;-><init>()V

    return-void
.end method

.method public static break(I)Lcom/google/common/util/concurrent/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/h<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h$if;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h$if;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h;->this(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/h;

    move-result-object p0

    return-object p0
.end method

.method public static catch(I)Lcom/google/common/util/concurrent/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/h<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/h;->for:Lcom/google/common/base/Supplier;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h;->this(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/h;

    move-result-object p0

    return-object p0
.end method

.method public static class(II)Lcom/google/common/util/concurrent/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/h<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h$new;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/h$new;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h;->this(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/h;

    move-result-object p0

    return-object p0
.end method

.method public static const(I)Lcom/google/common/util/concurrent/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/h<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h$do;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h$do;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h;->try(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic do(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/h;->new(I)I

    move-result p0

    return p0
.end method

.method public static final(I)Lcom/google/common/util/concurrent/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/h<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/h;->if:Lcom/google/common/base/Supplier;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h;->try(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/h;->while(I)I

    move-result p0

    return p0
.end method

.method private static new(I)I
    .locals 1

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/new;->throw(ILjava/math/RoundingMode;)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method public static super(II)Lcom/google/common/util/concurrent/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/h<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h$for;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/h$for;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h;->try(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/h;

    move-result-object p0

    return-object p0
.end method

.method private static this(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lcom/google/common/base/Supplier<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/h<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x400

    if-ge p0, v0, :cond_0

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h$class;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/h$class;-><init>(ILcom/google/common/base/Supplier;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/h$goto;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/h$goto;-><init>(ILcom/google/common/base/Supplier;)V

    :goto_0
    return-object v0
.end method

.method public static try(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lcom/google/common/base/Supplier<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/h<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h$else;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/util/concurrent/h$else;-><init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/h$do;)V

    return-object v0
.end method

.method private static while(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract case(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public abstract else(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation
.end method

.method public for(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/collect/r1;->d(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/v0;->of()Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 6
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/h;->goto(Ljava/lang/Object;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 8
    aget v2, v0, v1

    .line 9
    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/h;->else(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    const/4 v1, 0x1

    .line 10
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 11
    aget v3, v0, v1

    if-ne v3, v2, :cond_2

    add-int/lit8 v3, v1, -0x1

    .line 12
    aget-object v3, p1, v3

    aput-object v3, p1, v1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/h;->else(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    move v2, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract goto(Ljava/lang/Object;)I
.end method

.method public abstract throw()I
.end method
