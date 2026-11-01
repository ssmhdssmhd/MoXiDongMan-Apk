.class public final Lcom/bumptech/glide/case$if;
.super Lcom/bumptech/glide/case$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Failed to find image header parser."

    .line 1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/case$do;-><init>(Ljava/lang/String;)V

    return-void
.end method
