.class Lcom/google/common/base/Splitter$for$do;
.super Lcom/google/common/base/Splitter$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$for;->do(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic goto:Lcom/google/common/base/try;

.field public final synthetic this:Lcom/google/common/base/Splitter$for;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$for;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/Splitter$for$do;->this:Lcom/google/common/base/Splitter$for;

    iput-object p4, p0, Lcom/google/common/base/Splitter$for$do;->goto:Lcom/google/common/base/try;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$else;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public case(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter$for$do;->goto:Lcom/google/common/base/try;

    invoke-virtual {v0, p1}, Lcom/google/common/base/try;->for(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/common/base/Splitter$for$do;->goto:Lcom/google/common/base/try;

    invoke-virtual {p1}, Lcom/google/common/base/try;->case()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public try(I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/common/base/Splitter$for$do;->goto:Lcom/google/common/base/try;

    invoke-virtual {p1}, Lcom/google/common/base/try;->do()I

    move-result p1

    return p1
.end method
