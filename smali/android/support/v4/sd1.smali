.class public final synthetic Landroid/support/v4/sd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/PictureSelectorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/sd1;->do:Lcom/luck/picture/lib/PictureSelectorActivity;

    return-void
.end method


# virtual methods
.method public final loadComplete(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/sd1;->do:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->finally(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/util/List;)V

    return-void
.end method
