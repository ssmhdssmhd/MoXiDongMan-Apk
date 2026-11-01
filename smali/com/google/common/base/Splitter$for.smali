.class final Lcom/google/common/base/Splitter$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter;->break(Lcom/google/common/base/case;)Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/base/case;


# direct methods
.method public constructor <init>(Lcom/google/common/base/case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/Splitter$for;->do:Lcom/google/common/base/case;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$else;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter$for;->do:Lcom/google/common/base/case;

    invoke-virtual {v0, p2}, Lcom/google/common/base/case;->matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/try;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/base/Splitter$for$do;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/common/base/Splitter$for$do;-><init>(Lcom/google/common/base/Splitter$for;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/try;)V

    return-object v1
.end method

.method public bridge synthetic iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$for;->do(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$else;

    move-result-object p1

    return-object p1
.end method
