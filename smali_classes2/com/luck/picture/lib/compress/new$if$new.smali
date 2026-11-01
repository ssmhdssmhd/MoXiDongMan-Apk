.class Lcom/luck/picture/lib/compress/new$if$new;
.super Lcom/luck/picture/lib/compress/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/compress/new$if;->throw(Landroid/net/Uri;)Lcom/luck/picture/lib/compress/new$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/luck/picture/lib/compress/new$if;

.field public final synthetic if:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/compress/new$if;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if$new;->for:Lcom/luck/picture/lib/compress/new$if;

    iput-object p2, p0, Lcom/luck/picture/lib/compress/new$if$new;->if:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/luck/picture/lib/compress/for;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$new;->for:Lcom/luck/picture/lib/compress/new$if;

    invoke-static {v0}, Lcom/luck/picture/lib/compress/new$if;->for(Lcom/luck/picture/lib/compress/new$if;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$if$new;->if:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$new;->if:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
