.class public Lorg/antlr/v4/runtime/do;
.super Lorg/antlr/v4/runtime/if;
.source "SourceFile"


# instance fields
.field public goto:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/do;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/antlr/v4/runtime/if;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/antlr/v4/runtime/do;->goto:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/do;->new(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/do;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public new(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/misc/for;->this(Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object p1

    iput-object p1, p0, Lorg/antlr/v4/runtime/if;->do:[C

    .line 2
    array-length p1, p1

    iput p1, p0, Lorg/antlr/v4/runtime/if;->if:I

    return-void
.end method
