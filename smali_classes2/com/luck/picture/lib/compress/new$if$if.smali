.class Lcom/luck/picture/lib/compress/new$if$if;
.super Lcom/luck/picture/lib/compress/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/compress/new$if;->import(Lcom/luck/picture/lib/entity/LocalMedia;)Lcom/luck/picture/lib/compress/new$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/luck/picture/lib/compress/new$if;

.field public final synthetic if:Lcom/luck/picture/lib/entity/LocalMedia;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/compress/new$if;Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if$if;->for:Lcom/luck/picture/lib/compress/new$if;

    iput-object p2, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {p0}, Lcom/luck/picture/lib/compress/for;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/support/v4/ps1;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->catch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->if()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$if$if;->for:Lcom/luck/picture/lib/compress/new$if;

    invoke-static {v1}, Lcom/luck/picture/lib/compress/new$if;->for(Lcom/luck/picture/lib/compress/new$if;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/v9;->do(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$if$if;->for:Lcom/luck/picture/lib/compress/new$if;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/new$if;->for(Lcom/luck/picture/lib/compress/new$if;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/tools/do;->const(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Landroid/support/v4/v9;->if(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->const(Ljava/lang/String;)V

    move-object v0, v1

    .line 9
    :goto_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 10
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->catch()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->if()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->catch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->if()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$if;->if:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->do()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
