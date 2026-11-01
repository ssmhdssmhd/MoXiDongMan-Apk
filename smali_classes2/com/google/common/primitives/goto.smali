.class public final Lcom/google/common/primitives/goto;
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
        Lcom/google/common/primitives/goto$if;,
        Lcom/google/common/primitives/goto$for;
    }
.end annotation


# static fields
.field private static final if:Lcom/google/common/primitives/goto;


# instance fields
.field private final array:[J

.field private final transient do:I

.field private final end:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/primitives/goto;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {v0, v1}, Lcom/google/common/primitives/goto;-><init>([J)V

    sput-object v0, Lcom/google/common/primitives/goto;->if:Lcom/google/common/primitives/goto;

    return-void
.end method

.method private constructor <init>([J)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/goto;-><init>([JII)V

    return-void
.end method

.method private constructor <init>([JII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/primitives/goto;->array:[J

    .line 5
    iput p2, p0, Lcom/google/common/primitives/goto;->do:I

    .line 6
    iput p3, p0, Lcom/google/common/primitives/goto;->end:I

    return-void
.end method

.method public synthetic constructor <init>([JIILcom/google/common/primitives/goto$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/goto;-><init>([JII)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/primitives/goto;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/primitives/goto;->array:[J

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/common/primitives/goto;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/primitives/goto;->do:I

    return p0
.end method

.method public static synthetic access$200()Lcom/google/common/primitives/goto;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/primitives/goto;->if:Lcom/google/common/primitives/goto;

    return-object v0
.end method

.method public static builder()Lcom/google/common/primitives/goto$for;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/common/primitives/goto$for;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/goto$for;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/goto$for;
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
    new-instance v0, Lcom/google/common/primitives/goto$for;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/goto$for;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/goto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/goto;"
        }
    .end annotation

    .line 4
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/primitives/goto;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/goto;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/common/primitives/goto;->builder()Lcom/google/common/primitives/goto$for;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/goto$for;->for(Ljava/lang/Iterable;)Lcom/google/common/primitives/goto$for;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/primitives/goto$for;->case()Lcom/google/common/primitives/goto;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/goto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/goto;"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/goto;->if:Lcom/google/common/primitives/goto;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/goto;

    invoke-static {p0}, Lcom/google/common/primitives/break;->extends(Ljava/util/Collection;)[J

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/goto;-><init>([J)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static copyOf([J)Lcom/google/common/primitives/goto;
    .locals 2

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/goto;->if:Lcom/google/common/primitives/goto;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/goto;

    array-length v1, p0

    .line 2
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/goto;-><init>([J)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private do()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/primitives/goto;->do:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/primitives/goto;->end:I

    iget-object v1, p0, Lcom/google/common/primitives/goto;->array:[J

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

.method public static of()Lcom/google/common/primitives/goto;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/primitives/goto;->if:Lcom/google/common/primitives/goto;

    return-object v0
.end method

.method public static of(J)Lcom/google/common/primitives/goto;
    .locals 3

    .line 2
    new-instance v0, Lcom/google/common/primitives/goto;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/goto;-><init>([J)V

    return-object v0
.end method

.method public static of(JJ)Lcom/google/common/primitives/goto;
    .locals 3

    .line 3
    new-instance v0, Lcom/google/common/primitives/goto;

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/goto;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJ)Lcom/google/common/primitives/goto;
    .locals 3

    .line 4
    new-instance v0, Lcom/google/common/primitives/goto;

    const/4 v1, 0x3

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    const/4 p0, 0x2

    aput-wide p4, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/goto;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJJ)Lcom/google/common/primitives/goto;
    .locals 3

    .line 5
    new-instance v0, Lcom/google/common/primitives/goto;

    const/4 v1, 0x4

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    const/4 p0, 0x2

    aput-wide p4, v1, p0

    const/4 p0, 0x3

    aput-wide p6, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/goto;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJJJ)Lcom/google/common/primitives/goto;
    .locals 3

    .line 6
    new-instance v0, Lcom/google/common/primitives/goto;

    const/4 v1, 0x5

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    const/4 p0, 0x2

    aput-wide p4, v1, p0

    const/4 p0, 0x3

    aput-wide p6, v1, p0

    const/4 p0, 0x4

    aput-wide p8, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/goto;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJJJJ)Lcom/google/common/primitives/goto;
    .locals 3

    .line 7
    new-instance v0, Lcom/google/common/primitives/goto;

    const/4 v1, 0x6

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    const/4 p0, 0x2

    aput-wide p4, v1, p0

    const/4 p0, 0x3

    aput-wide p6, v1, p0

    const/4 p0, 0x4

    aput-wide p8, v1, p0

    const/4 p0, 0x5

    aput-wide p10, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/goto;-><init>([J)V

    return-object v0
.end method

.method public static varargs of(J[J)Lcom/google/common/primitives/goto;
    .locals 4

    .line 8
    array-length v0, p2

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
    array-length v0, p2

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 10
    aput-wide p0, v0, v2

    .line 11
    array-length p0, p2

    invoke-static {p2, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-instance p0, Lcom/google/common/primitives/goto;

    invoke-direct {p0, v0}, Lcom/google/common/primitives/goto;-><init>([J)V

    return-object p0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/primitives/goto$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/goto$if;-><init>(Lcom/google/common/primitives/goto;Lcom/google/common/primitives/goto$do;)V

    return-object v0
.end method

.method public contains(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/goto;->indexOf(J)I

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
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/goto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/common/primitives/goto;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/primitives/goto;->length()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/common/primitives/goto;->length()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/primitives/goto;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/common/primitives/goto;->get(I)J

    move-result-wide v3

    invoke-virtual {p1, v1}, Lcom/google/common/primitives/goto;->get(I)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/goto;->length()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/af1;->private(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/primitives/goto;->array:[J

    iget v1, p0, Lcom/google/common/primitives/goto;->do:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/primitives/goto;->do:I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/goto;->end:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v2, p0, Lcom/google/common/primitives/goto;->array:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lcom/google/common/primitives/break;->catch(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(J)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/common/primitives/goto;->do:I

    :goto_0
    iget v1, p0, Lcom/google/common/primitives/goto;->end:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/common/primitives/goto;->array:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 3
    iget p1, p0, Lcom/google/common/primitives/goto;->do:I

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
    iget v0, p0, Lcom/google/common/primitives/goto;->end:I

    iget v1, p0, Lcom/google/common/primitives/goto;->do:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(J)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/primitives/goto;->end:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/google/common/primitives/goto;->do:I

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/common/primitives/goto;->array:[J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p1

    if-nez v2, :cond_0

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
    iget v0, p0, Lcom/google/common/primitives/goto;->end:I

    iget v1, p0, Lcom/google/common/primitives/goto;->do:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/goto;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/goto;->if:Lcom/google/common/primitives/goto;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public subArray(II)Lcom/google/common/primitives/goto;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/goto;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/support/v4/af1;->s(III)V

    if-ne p1, p2, :cond_0

    .line 2
    sget-object p1, Lcom/google/common/primitives/goto;->if:Lcom/google/common/primitives/goto;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/goto;

    iget-object v1, p0, Lcom/google/common/primitives/goto;->array:[J

    iget v2, p0, Lcom/google/common/primitives/goto;->do:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/primitives/goto;-><init>([JII)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public toArray()[J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/primitives/goto;->array:[J

    iget v1, p0, Lcom/google/common/primitives/goto;->do:I

    iget v2, p0, Lcom/google/common/primitives/goto;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/goto;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/goto;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/goto;->array:[J

    iget v2, p0, Lcom/google/common/primitives/goto;->do:I

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lcom/google/common/primitives/goto;->do:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/goto;->end:I

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/goto;->array:[J

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

.method public trimmed()Lcom/google/common/primitives/goto;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/primitives/goto;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/primitives/goto;

    invoke-virtual {p0}, Lcom/google/common/primitives/goto;->toArray()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/goto;-><init>([J)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/goto;->trimmed()Lcom/google/common/primitives/goto;

    move-result-object v0

    return-object v0
.end method
