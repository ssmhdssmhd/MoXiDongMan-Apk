.class public Lcom/googlecode/protobuf/format/if;
.super Lcom/googlecode/protobuf/format/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/protobuf/format/if$do;,
        Lcom/googlecode/protobuf/format/if$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/protobuf/format/case;-><init>()V

    return-void
.end method


# virtual methods
.method public const(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/case$new;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/if$if;

    invoke-direct {v0, p1}, Lcom/googlecode/protobuf/format/if$if;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "{"

    .line 2
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/case$try;->if(Ljava/lang/String;)V

    :goto_0
    const-string p1, "}"

    .line 3
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, v0, p2, p3}, Lcom/googlecode/protobuf/format/case;->default(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public super(Lcom/google/protobuf/Message;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/if$do;

    invoke-direct {v0, p2}, Lcom/googlecode/protobuf/format/if$do;-><init>(Ljava/lang/Appendable;)V

    const-string p2, "{"

    .line 2
    invoke-virtual {v0, p2}, Lcom/googlecode/protobuf/format/if$do;->for(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/protobuf/format/case;->strictfp(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/case$for;)V

    const-string p1, "}"

    .line 4
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/if$do;->for(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public throw(Lcom/google/protobuf/t1;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/if$do;

    invoke-direct {v0, p2}, Lcom/googlecode/protobuf/format/if$do;-><init>(Ljava/lang/Appendable;)V

    const-string p2, "{"

    .line 2
    invoke-virtual {v0, p2}, Lcom/googlecode/protobuf/format/if$do;->for(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/protobuf/format/case;->transient(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/case$for;)V

    const-string p1, "}"

    .line 4
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/if$do;->for(Ljava/lang/CharSequence;)V

    return-void
.end method
