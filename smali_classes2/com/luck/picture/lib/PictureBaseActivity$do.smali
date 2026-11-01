.class Lcom/luck/picture/lib/PictureBaseActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/compress/OnCompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureBaseActivity;->new(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/luck/picture/lib/PictureBaseActivity;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$do;->if:Lcom/luck/picture/lib/PictureBaseActivity;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureBaseActivity$do;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object p1

    new-instance v0, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v1, 0xad2

    invoke-direct {v0, v1}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/rxbus2/do;->this(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$do;->if:Lcom/luck/picture/lib/PictureBaseActivity;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$do;->do:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->import(Ljava/util/List;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v2, 0xad2

    invoke-direct {v1, v2}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/rxbus2/do;->this(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$do;->if:Lcom/luck/picture/lib/PictureBaseActivity;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->import(Ljava/util/List;)V

    return-void
.end method
