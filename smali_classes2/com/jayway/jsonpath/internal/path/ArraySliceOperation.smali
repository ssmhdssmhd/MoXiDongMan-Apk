.class public Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;
    }
.end annotation


# instance fields
.field private final from:Ljava/lang/Integer;

.field private final operation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

.field private final to:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->from:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->to:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->operation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Failed to parse SliceOperation: "

    if-ge v1, v2, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_1

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, ":"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1, v0}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->tryRead([Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->tryRead([Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 8
    sget-object p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;->SLICE_FROM:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 9
    sget-object p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;->SLICE_BETWEEN:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 10
    sget-object p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;->SLICE_TO:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    .line 11
    :goto_2
    new-instance v2, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;

    invoke-direct {v2, v0, v1, p0}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;)V

    return-object v2

    .line 12
    :cond_5
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private static tryRead([Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    .line 2
    aget-object v0, p0, p1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public from()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->from:Ljava/lang/Integer;

    return-object v0
.end method

.method public operation()Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->operation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    return-object v0
.end method

.method public to()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->to:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->from:Ljava/lang/Integer;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->to:Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
