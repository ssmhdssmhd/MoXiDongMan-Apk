.class public Lcom/googlecode/protobuf/format/if$do;
.super Lcom/googlecode/protobuf/format/case$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/protobuf/format/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/protobuf/format/case$for;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public for(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "id"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "_id"

    .line 2
    invoke-super {p0, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "rev"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "_rev"

    .line 4
    invoke-super {p0, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
