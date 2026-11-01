.class public final Lcom/google/common/primitives/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Landroid/support/v4/fm0;
.end annotation

.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/else$if;,
        Lcom/google/common/primitives/else$for;
    }
.end annotation


# static fields
.field private static final if:Lcom/google/common/primitives/else;


# instance fields
.field private final array:[I

.field private final transient do:I

.field private final end:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/primitives/else;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/google/common/primitives/else;-><init>([I)V

    sput-object v0, Lcom/google/common/primitives/else;->if:Lcom/google/common/primitives/else;

    return-void
.end method

.method private constructor <init>([I)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/else;-><init>([III)V

    return-void
.end method

.method private constructor <init>([III)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/primitives/else;->array:[I

    .line 5
    iput p2, p0, Lcom/google/common/primitives/else;->do:I

    .line 6
    iput p3, p0, Lcom/google/common/primitives/else;->end:I

    return-void
.end method

.method public synthetic constructor <init>([IIILcom/google/common/primitives/else$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/else;-><init>([III)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/primitives/else;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/primitives/else;->array:[I

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/common/primitives/else;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/primitives/else;->do:I

    return p0
.end method

.method public static synthetic access$200()Lcom/google/common/primitives/else;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/primitives/else;->if:Lcom/google/common/primitives/else;

    return-object v0
.end method

.method public static builder()Lcom/google/common/primitives/else$for;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/common/primitives/else$for;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/else$for;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/else$for;
    .locals 2

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    .line 1
    invoke-static {v0, v1, p0}, Landroid/support/v4/af1;->catch(ZLjava/lang/String;I)V

    .line 2
    new-instance v0, Lcom/google/common/primitives/else$for;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/else$for;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/else;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/else;"
        }
    .end annotation

    .line 3
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/primitives/else;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/else;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/common/primitives/else;->builder()Lcom/google/common/primitives/else$for;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/else$for;->for(Ljava/lang/Iterable;)Lcom/google/common/primitives/else$for;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/primitives/else$for;->case()Lcom/google/common/primitives/else;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/else;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/else;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/else;->if:Lcom/google/common/primitives/else;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/else;

    invoke-static {p0}, Lcom/google/common/primitives/this;->package(Ljava/util/Collection;)[I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/else;-><init>([I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static copyOf([I)Lcom/google/common/primitives/else;
    .locals 2

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/else;->if:Lcom/google/common/primitives/else;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/else;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/else;-><init>([I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private do()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/primitives/else;->do:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/primitives/else;->end:I

    iget-object v1, p0, Lcom/google/common/primitives/else;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static of()Lcom/google/common/primitives/else;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/primitives/else;->if:Lcom/google/common/primitives/else;

    return-object v0
.end method

.method public static of(I)Lcom/google/common/primitives/else;
    .locals 3

    .line 2
    new-instance v0, Lcom/google/common/primitives/else;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/else;-><init>([I)V

    return-object v0
.end method

.method public static of(II)Lcom/google/common/primitives/else;
    .locals 3

    .line 3
    new-instance v0, Lcom/google/common/primitives/else;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/else;-><init>([I)V

    return-object v0
.end method

.method public static of(III)Lcom/google/common/primitives/else;
    .locals 3

    .line 4
    new-instance v0, Lcom/google/common/primitives/else;

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/else;-><init>([I)V

    return-object v0
.end method

.method public static of(IIII)Lcom/google/common/primitives/else;
    .locals 3

    .line 5
    new-instance v0, Lcom/google/common/primitives/else;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    const/4 p0, 0x3

    aput p3, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/else;-><init>([I)V

    return-object v0
.end method

.method public static of(IIIII)Lcom/google/common/primitives/else;
    .locals 3

    .line 6
    new-instance v0, Lcom/google/common/primitives/else;

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    const/4 p0, 0x3

    aput p3, v1, p0

    const/4 p0, 0x4

    aput p4, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/else;-><init>([I)V

    return-object v0
.end method

.method public static of(IIIIII)Lcom/google/common/primitives/else;
    .locals 3

    .line 7
    new-instance v0, Lcom/google/common/primitives/else;

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    const/4 p0, 0x3

    aput p3, v1, p0

    const/4 p0, 0x4

    aput p4, v1, p0

    const/4 p0, 0x5

    aput p5, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/else;-><init>([I)V

    return-object v0
.end method

.method public static varargs of(I[I)Lcom/google/common/primitives/else;
    .locals 4

    .line 8
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7ffffffe

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    .line 9
    array-length v0, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 10
    aput p0, v0, v2

    .line 11
    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-instance p0, Lcom/google/common/primitives/else;

    invoke-direct {p0, v0}, Lcom/google/common/primitives/else;-><init>([I)V

    return-object p0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/primitives/else$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/else$if;-><init>(Lcom/google/common/primitives/else;Lcom/google/common/primitives/else$do;)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/else;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/else;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/common/primitives/else;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/primitives/else;->length()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/common/primitives/else;->length()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/primitives/else;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/common/primitives/else;->get(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/google/common/primitives/else;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/else;->length()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/af1;->private(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/primitives/else;->array:[I

    iget v1, p0, Lcom/google/common/primitives/else;->do:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/primitives/else;->do:I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/else;->end:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v2, p0, Lcom/google/common/primitives/else;->array:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/this;->class(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/primitives/else;->do:I

    :goto_0
    iget v1, p0, Lcom/google/common/primitives/else;->end:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/common/primitives/else;->array:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 3
    iget p1, p0, Lcom/google/common/primitives/else;->do:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/primitives/else;->end:I

    iget v1, p0, Lcom/google/common/primitives/else;->do:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/primitives/else;->end:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/google/common/primitives/else;->do:I

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/common/primitives/else;->array:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public length()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/primitives/else;->end:I

    iget v1, p0, Lcom/google/common/primitives/else;->do:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/else;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/else;->if:Lcom/google/common/primitives/else;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public subArray(II)Lcom/google/common/primitives/else;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/else;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/support/v4/af1;->s(III)V

    if-ne p1, p2, :cond_0

    .line 2
    sget-object p1, Lcom/google/common/primitives/else;->if:Lcom/google/common/primitives/else;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/else;

    iget-object v1, p0, Lcom/google/common/primitives/else;->array:[I

    iget v2, p0, Lcom/google/common/primitives/else;->do:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/primitives/else;-><init>([III)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public toArray()[I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/primitives/else;->array:[I

    iget v1, p0, Lcom/google/common/primitives/else;->do:I

    iget v2, p0, Lcom/google/common/primitives/else;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/else;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/else;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/else;->array:[I

    iget v2, p0, Lcom/google/common/primitives/else;->do:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lcom/google/common/primitives/else;->do:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/else;->end:I

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/else;->array:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimmed()Lcom/google/common/primitives/else;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/primitives/else;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/primitives/else;

    invoke-virtual {p0}, Lcom/google/common/primitives/else;->toArray()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/else;-><init>([I)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/else;->trimmed()Lcom/google/common/primitives/else;

    move-result-object v0

    return-object v0
.end method
