.class Lcom/luck/picture/lib/PictureSelectorActivity$case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorActivity$case;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/PictureSelectorActivity$case;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity$case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$case$do;->do:Lcom/luck/picture/lib/PictureSelectorActivity$case;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$case$do;->do:Lcom/luck/picture/lib/PictureSelectorActivity$case;

    iget-object v1, v0, Lcom/luck/picture/lib/PictureSelectorActivity$case;->if:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorActivity$case;->do:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->v(Ljava/lang/String;)V

    return-void
.end method
