.class Lcc/shinichi/library/view/ImagePreviewAdapter$else$if$do;
.super Landroid/support/v4/za0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;->onLoadFailed(Lcom/bumptech/glide/load/engine/catch;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$else$if$do;->do:Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;

    invoke-direct {p0}, Landroid/support/v4/za0;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/za0;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
