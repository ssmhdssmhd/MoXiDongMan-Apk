.class public Lcom/googlecode/protobuf/format/if$if;
.super Lcom/googlecode/protobuf/format/case$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/protobuf/format/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/protobuf/format/case$try;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public else()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/case$new;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/googlecode/protobuf/format/case$try;->else()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "id"

    return-object v0

    :cond_0
    const-string v1, "_rev"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "rev"

    :cond_1
    return-object v0
.end method
