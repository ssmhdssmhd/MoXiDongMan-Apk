.class abstract Lcom/google/common/base/Splitter$else;
.super Lcom/google/common/base/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/if<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public case:I

.field public else:I

.field public final for:Ljava/lang/CharSequence;

.field public final new:Lcom/google/common/base/new;

.field public final try:Z


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/if;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/common/base/Splitter$else;->case:I

    .line 3
    invoke-static {p1}, Lcom/google/common/base/Splitter;->if(Lcom/google/common/base/Splitter;)Lcom/google/common/base/new;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$else;->new:Lcom/google/common/base/new;

    .line 4
    invoke-static {p1}, Lcom/google/common/base/Splitter;->for(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$else;->try:Z

    .line 5
    invoke-static {p1}, Lcom/google/common/base/Splitter;->new(Lcom/google/common/base/Splitter;)I

    move-result p1

    iput p1, p0, Lcom/google/common/base/Splitter$else;->else:I

    .line 6
    iput-object p2, p0, Lcom/google/common/base/Splitter$else;->for:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public abstract case(I)I
.end method

.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$else;->new()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public new()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/common/base/Splitter$else;->case:I

    .line 2
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/Splitter$else;->case:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$else;->case(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/common/base/Splitter$else;->for:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5
    iput v2, p0, Lcom/google/common/base/Splitter$else;->case:I

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$else;->try(I)I

    move-result v3

    iput v3, p0, Lcom/google/common/base/Splitter$else;->case:I

    .line 7
    :goto_1
    iget v3, p0, Lcom/google/common/base/Splitter$else;->case:I

    if-ne v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 8
    iput v3, p0, Lcom/google/common/base/Splitter$else;->case:I

    .line 9
    iget-object v1, p0, Lcom/google/common/base/Splitter$else;->for:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_0

    .line 10
    iput v2, p0, Lcom/google/common/base/Splitter$else;->case:I

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    .line 11
    iget-object v3, p0, Lcom/google/common/base/Splitter$else;->new:Lcom/google/common/base/new;

    iget-object v4, p0, Lcom/google/common/base/Splitter$else;->for:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/new;->package(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    .line 12
    iget-object v3, p0, Lcom/google/common/base/Splitter$else;->new:Lcom/google/common/base/new;

    iget-object v4, p0, Lcom/google/common/base/Splitter$else;->for:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/new;->package(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 13
    :cond_4
    iget-boolean v3, p0, Lcom/google/common/base/Splitter$else;->try:Z

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_5

    .line 14
    iget v0, p0, Lcom/google/common/base/Splitter$else;->case:I

    goto :goto_0

    .line 15
    :cond_5
    iget v3, p0, Lcom/google/common/base/Splitter$else;->else:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 16
    iget-object v1, p0, Lcom/google/common/base/Splitter$else;->for:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 17
    iput v2, p0, Lcom/google/common/base/Splitter$else;->case:I

    :goto_4
    if-le v1, v0, :cond_7

    .line 18
    iget-object v2, p0, Lcom/google/common/base/Splitter$else;->new:Lcom/google/common/base/new;

    iget-object v3, p0, Lcom/google/common/base/Splitter$else;->for:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/new;->package(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    sub-int/2addr v3, v4

    .line 19
    iput v3, p0, Lcom/google/common/base/Splitter$else;->else:I

    .line 20
    :cond_7
    iget-object v2, p0, Lcom/google/common/base/Splitter$else;->for:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 21
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/base/if;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public abstract try(I)I
.end method
