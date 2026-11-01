.class final Lkotlin/io/if$if$if;
.super Lkotlin/io/if$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/if$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTreeWalk.kt\nkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n1#2:274\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "kotlin/io/if$if$if",
        "Lkotlin/io/if$for;",
        "Ljava/io/File;",
        "if",
        "",
        "Z",
        "visited",
        "rootFile",
        "<init>",
        "(Lkotlin/io/if$if;Ljava/io/File;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic for:Lkotlin/io/if$if;

.field private if:Z


# direct methods
.method public constructor <init>(Lkotlin/io/if$if;Ljava/io/File;)V
    .locals 1
    .param p1    # Lkotlin/io/if$if;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lkotlin/io/if$if$if;->for:Lkotlin/io/if$if;

    invoke-direct {p0, p2}, Lkotlin/io/if$for;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public if()Ljava/io/File;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lkotlin/io/if$if$if;->if:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkotlin/io/if$if$if;->if:Z

    .line 3
    invoke-virtual {p0}, Lkotlin/io/if$for;->do()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
