.class Lcom/google/common/base/Splitter$do$do;
.super Lcom/google/common/base/Splitter$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$do;->do(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic goto:Lcom/google/common/base/Splitter$do;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$do;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/Splitter$do$do;->goto:Lcom/google/common/base/Splitter$do;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$else;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public case(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter$do$do;->goto:Lcom/google/common/base/Splitter$do;

    iget-object v0, v0, Lcom/google/common/base/Splitter$do;->do:Lcom/google/common/base/new;

    iget-object v1, p0, Lcom/google/common/base/Splitter$else;->for:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/new;->super(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public try(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
