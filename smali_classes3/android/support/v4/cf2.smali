.class public Landroid/support/v4/cf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/Vocabulary;


# static fields
.field public static final case:Landroid/support/v4/cf2;

.field private static final try:[Ljava/lang/String;


# instance fields
.field private final do:[Ljava/lang/String;

.field private final for:[Ljava/lang/String;

.field private final if:[Ljava/lang/String;

.field private final new:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Landroid/support/v4/cf2;->try:[Ljava/lang/String;

    .line 2
    new-instance v1, Landroid/support/v4/cf2;

    invoke-direct {v1, v0, v0, v0}, Landroid/support/v4/cf2;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Landroid/support/v4/cf2;->case:Landroid/support/v4/cf2;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/cf2;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Landroid/support/v4/cf2;->try:[Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Landroid/support/v4/cf2;->do:[Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object p2, Landroid/support/v4/cf2;->try:[Ljava/lang/String;

    :goto_1
    iput-object p2, p0, Landroid/support/v4/cf2;->if:[Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    sget-object p3, Landroid/support/v4/cf2;->try:[Ljava/lang/String;

    :goto_2
    iput-object p3, p0, Landroid/support/v4/cf2;->for:[Ljava/lang/String;

    .line 6
    array-length p3, p3

    array-length p1, p1

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v4/cf2;->new:I

    return-void
.end method

.method public static do([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;
    .locals 7

    if-eqz p0, :cond_5

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_4

    .line 5
    aget-object v4, p0, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 7
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_2

    .line 8
    aput-object v6, v1, v3

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    aput-object v6, v0, v3

    goto :goto_1

    .line 11
    :cond_3
    aput-object v6, v0, v3

    .line 12
    aput-object v6, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_4
    new-instance v2, Landroid/support/v4/cf2;

    invoke-direct {v2, v0, v1, p0}, Landroid/support/v4/cf2;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2

    .line 14
    :cond_5
    :goto_2
    sget-object p0, Landroid/support/v4/cf2;->case:Landroid/support/v4/cf2;

    return-object p0
.end method


# virtual methods
.method public getDisplayName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/cf2;->for:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/cf2;->getLiteralName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/cf2;->getSymbolicName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLiteralName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/cf2;->do:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxTokenType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/cf2;->new:I

    return v0
.end method

.method public getSymbolicName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/cf2;->if:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string p1, "EOF"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
