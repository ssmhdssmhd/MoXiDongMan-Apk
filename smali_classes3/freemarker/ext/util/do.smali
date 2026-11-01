.class public Lfreemarker/ext/util/do;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/util/do$case;,
        Lfreemarker/ext/util/do$new;,
        Lfreemarker/ext/util/do$try;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static break:Lfreemarker/ext/util/do$new; = null

.field private static final else:I = 0x0

.field private static final goto:I = 0x1

.field public static final serialVersionUID:J = 0x507dac1c31660d1L

.field private static final this:I = 0x2


# instance fields
.field private transient case:Ljava/util/Collection;

.field private transient do:[Lfreemarker/ext/util/do$try;

.field private transient for:I

.field private transient if:I

.field private loadFactor:F

.field private transient new:Ljava/util/Set;

.field private threshold:I

.field private transient try:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/util/do$new;

    invoke-direct {v0}, Lfreemarker/ext/util/do$new;-><init>()V

    sput-object v0, Lfreemarker/ext/util/do;->break:Lfreemarker/ext/util/do$new;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    .line 13
    invoke-direct {p0, v0, v1}, Lfreemarker/ext/util/do;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 12
    invoke-direct {p0, p1, v0}, Lfreemarker/ext/util/do;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lfreemarker/ext/util/do;->for:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lfreemarker/ext/util/do;->new:Ljava/util/Set;

    .line 4
    iput-object v0, p0, Lfreemarker/ext/util/do;->try:Ljava/util/Set;

    .line 5
    iput-object v0, p0, Lfreemarker/ext/util/do;->case:Ljava/util/Collection;

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    .line 6
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 7
    :cond_0
    iput p2, p0, Lfreemarker/ext/util/do;->loadFactor:F

    .line 8
    new-array v0, p1, [Lfreemarker/ext/util/do$try;

    iput-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 9
    iput p1, p0, Lfreemarker/ext/util/do;->threshold:I

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal Load factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal Initial Capacity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lfreemarker/ext/util/do;-><init>(IF)V

    .line 15
    invoke-virtual {p0, p1}, Lfreemarker/ext/util/do;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$000(Lfreemarker/ext/util/do;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/util/do;->do(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lfreemarker/ext/util/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lfreemarker/ext/util/do;->if:I

    return p0
.end method

.method public static synthetic access$110(Lfreemarker/ext/util/do;)I
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/ext/util/do;->if:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lfreemarker/ext/util/do;->if:I

    return v0
.end method

.method public static synthetic access$200(Lfreemarker/ext/util/do;)[Lfreemarker/ext/util/do$try;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    return-object p0
.end method

.method public static synthetic access$300(Lfreemarker/ext/util/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lfreemarker/ext/util/do;->for:I

    return p0
.end method

.method public static synthetic access$308(Lfreemarker/ext/util/do;)I
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/ext/util/do;->for:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfreemarker/ext/util/do;->for:I

    return v0
.end method

.method private do(I)Ljava/util/Iterator;
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/util/do;->if:I

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lfreemarker/ext/util/do;->break:Lfreemarker/ext/util/do$new;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lfreemarker/ext/util/do$case;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/util/do$case;-><init>(Lfreemarker/ext/util/do;I)V

    return-object v0
.end method

.method private if()V
    .locals 8

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 2
    new-array v3, v2, [Lfreemarker/ext/util/do$try;

    .line 3
    iget v4, p0, Lfreemarker/ext/util/do;->for:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfreemarker/ext/util/do;->for:I

    int-to-float v4, v2

    .line 4
    iget v5, p0, Lfreemarker/ext/util/do;->loadFactor:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, p0, Lfreemarker/ext/util/do;->threshold:I

    .line 5
    iput-object v3, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_1

    .line 6
    aget-object v1, v0, v4

    :goto_1
    if-eqz v1, :cond_0

    .line 7
    iget-object v5, v1, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    .line 8
    iget v6, v1, Lfreemarker/ext/util/do$try;->do:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v2

    .line 9
    aget-object v7, v3, v6

    iput-object v7, v1, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    .line 10
    aput-object v1, v3, v6

    move-object v1, v5

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 3
    new-array v0, v0, [Lfreemarker/ext/util/do$try;

    iput-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v2, v3}, Lfreemarker/ext/util/do;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3
    iget v0, p0, Lfreemarker/ext/util/do;->if:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 4
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    aget-object v1, v1, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 6
    iget-object v2, v1, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 7
    iget-object v2, v1, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 8
    iget-object v1, v1, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    .line 2
    iget v1, p0, Lfreemarker/ext/util/do;->for:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/ext/util/do;->for:I

    .line 3
    array-length v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 4
    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lfreemarker/ext/util/do;->if:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/util/do;

    .line 2
    iget-object v1, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    array-length v1, v1

    new-array v1, v1, [Lfreemarker/ext/util/do$try;

    iput-object v1, v0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    .line 3
    iget-object v1, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    array-length v1, v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 4
    iget-object v1, v0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    iget-object v4, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    aget-object v5, v4, v2

    if-eqz v5, :cond_0

    aget-object v3, v4, v2

    .line 5
    invoke-virtual {v3}, Lfreemarker/ext/util/do$try;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/util/do$try;

    :cond_0
    aput-object v3, v1, v2

    move v1, v2

    goto :goto_0

    .line 6
    :cond_1
    iput-object v3, v0, Lfreemarker/ext/util/do;->new:Ljava/util/Set;

    .line 7
    iput-object v3, v0, Lfreemarker/ext/util/do;->try:Ljava/util/Set;

    .line 8
    iput-object v3, v0, Lfreemarker/ext/util/do;->case:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lfreemarker/ext/util/do;->for:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v4, v3

    .line 3
    array-length v5, v0

    rem-int/2addr v4, v5

    .line 4
    aget-object v0, v0, v4

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    iget v4, v0, Lfreemarker/ext/util/do$try;->do:I

    if-ne v4, v3, :cond_0

    iget-object v4, v0, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    if-ne p1, v4, :cond_0

    return v1

    .line 6
    :cond_0
    iget-object v0, v0, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_0

    .line 7
    :cond_1
    aget-object p1, v0, v2

    :goto_1
    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p1, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    if-nez v0, :cond_2

    return v1

    .line 9
    :cond_2
    iget-object p1, p1, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_1

    :cond_3
    return v2
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 2
    array-length p1, v0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_5

    .line 3
    aget-object p1, v0, v2

    :goto_1
    if-eqz p1, :cond_1

    .line 4
    iget-object v3, p1, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    if-nez v3, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object p1, p1, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_1

    :cond_1
    move p1, v2

    goto :goto_0

    .line 6
    :cond_2
    array-length v2, v0

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_5

    .line 7
    aget-object v2, v0, v3

    :goto_3
    if-eqz v2, :cond_4

    .line 8
    iget-object v4, v2, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    .line 9
    :cond_3
    iget-object v2, v2, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->try:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/ext/util/do$for;

    invoke-direct {v0, p0}, Lfreemarker/ext/util/do$for;-><init>(Lfreemarker/ext/util/do;)V

    iput-object v0, p0, Lfreemarker/ext/util/do;->try:Ljava/util/Set;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/util/do;->try:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    .line 3
    array-length v3, v0

    rem-int/2addr v2, v3

    .line 4
    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    iget v2, v0, Lfreemarker/ext/util/do$try;->do:I

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    if-ne p1, v2, :cond_0

    .line 6
    iget-object p1, v0, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    return-object p1

    .line 7
    :cond_0
    iget-object v0, v0, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    aget-object p1, v0, p1

    :goto_1
    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p1, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 10
    iget-object p1, p1, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    return-object p1

    .line 11
    :cond_2
    iget-object p1, p1, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/util/do;->if:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->new:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/ext/util/do$do;

    invoke-direct {v0, p0}, Lfreemarker/ext/util/do$do;-><init>(Lfreemarker/ext/util/do;)V

    iput-object v0, p0, Lfreemarker/ext/util/do;->new:Ljava/util/Set;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/util/do;->new:Ljava/util/Set;

    return-object v0
.end method

.method public loadFactor()F
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/util/do;->loadFactor:F

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    and-int v3, v2, v1

    .line 3
    array-length v4, v0

    rem-int/2addr v3, v4

    .line 4
    aget-object v4, v0, v3

    :goto_0
    if-eqz v4, :cond_4

    .line 5
    iget v5, v4, Lfreemarker/ext/util/do$try;->do:I

    if-ne v5, v2, :cond_0

    iget-object v5, v4, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    if-ne p1, v5, :cond_0

    .line 6
    iget-object p1, v4, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    .line 7
    iput-object p2, v4, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    return-object p1

    .line 8
    :cond_0
    iget-object v4, v4, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_0

    .line 9
    :cond_1
    aget-object v3, v0, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 10
    iget-object v4, v3, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 11
    iget-object p1, v3, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    .line 12
    iput-object p2, v3, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    return-object p1

    .line 13
    :cond_2
    iget-object v3, v3, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 14
    :cond_4
    iget v4, p0, Lfreemarker/ext/util/do;->for:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfreemarker/ext/util/do;->for:I

    .line 15
    iget v4, p0, Lfreemarker/ext/util/do;->if:I

    iget v5, p0, Lfreemarker/ext/util/do;->threshold:I

    if-lt v4, v5, :cond_5

    .line 16
    invoke-direct {p0}, Lfreemarker/ext/util/do;->if()V

    .line 17
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    and-int/2addr v1, v2

    .line 18
    array-length v3, v0

    rem-int v3, v1, v3

    .line 19
    :cond_5
    new-instance v1, Lfreemarker/ext/util/do$try;

    aget-object v4, v0, v3

    invoke-direct {v1, v2, p1, p2, v4}, Lfreemarker/ext/util/do$try;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lfreemarker/ext/util/do$try;)V

    .line 20
    aput-object v1, v0, v3

    .line 21
    iget p1, p0, Lfreemarker/ext/util/do;->if:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/ext/util/do;->if:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lfreemarker/ext/util/do;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->do:[Lfreemarker/ext/util/do$try;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v3, v2

    .line 3
    array-length v4, v0

    rem-int/2addr v3, v4

    .line 4
    aget-object v4, v0, v3

    move-object v5, v1

    :goto_0
    if-eqz v4, :cond_5

    .line 5
    iget v6, v4, Lfreemarker/ext/util/do$try;->do:I

    if-ne v6, v2, :cond_1

    iget-object v6, v4, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    if-ne p1, v6, :cond_1

    .line 6
    iget p1, p0, Lfreemarker/ext/util/do;->for:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/ext/util/do;->for:I

    if-eqz v5, :cond_0

    .line 7
    iget-object p1, v4, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    iput-object p1, v5, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, v4, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    aput-object p1, v0, v3

    .line 9
    :goto_1
    iget p1, p0, Lfreemarker/ext/util/do;->if:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lfreemarker/ext/util/do;->if:I

    .line 10
    iget-object p1, v4, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    .line 11
    iput-object v1, v4, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    return-object p1

    .line 12
    :cond_1
    iget-object v5, v4, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 13
    aget-object v2, v0, p1

    move-object v3, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 14
    iget-object v4, v2, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    if-nez v4, :cond_4

    .line 15
    iget v4, p0, Lfreemarker/ext/util/do;->for:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfreemarker/ext/util/do;->for:I

    if-eqz v3, :cond_3

    .line 16
    iget-object p1, v2, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    iput-object p1, v3, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_3

    .line 17
    :cond_3
    iget-object v3, v2, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    aput-object v3, v0, p1

    .line 18
    :goto_3
    iget p1, p0, Lfreemarker/ext/util/do;->if:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lfreemarker/ext/util/do;->if:I

    .line 19
    iget-object p1, v2, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    .line 20
    iput-object v1, v2, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    return-object p1

    .line 21
    :cond_4
    iget-object v3, v2, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_2

    :cond_5
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/util/do;->if:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do;->case:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/ext/util/do$if;

    invoke-direct {v0, p0}, Lfreemarker/ext/util/do$if;-><init>(Lfreemarker/ext/util/do;)V

    iput-object v0, p0, Lfreemarker/ext/util/do;->case:Ljava/util/Collection;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/util/do;->case:Ljava/util/Collection;

    return-object v0
.end method
