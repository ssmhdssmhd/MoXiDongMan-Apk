.class Lcom/google/common/base/Splitter$new$do;
.super Lcom/google/common/base/Splitter$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$new;->do(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic goto:Lcom/google/common/base/Splitter$new;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$new;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/Splitter$new$do;->goto:Lcom/google/common/base/Splitter$new;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$else;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public case(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter$new$do;->goto:Lcom/google/common/base/Splitter$new;

    iget v0, v0, Lcom/google/common/base/Splitter$new;->do:I

    add-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lcom/google/common/base/Splitter$else;->for:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public try(I)I
    .locals 0

    return p1
.end method
