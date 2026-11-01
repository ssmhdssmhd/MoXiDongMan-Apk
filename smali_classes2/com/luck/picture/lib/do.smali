.class public Lcom/luck/picture/lib/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

.field private if:Lcom/luck/picture/lib/if;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/if;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/luck/picture/lib/do;->if:Lcom/luck/picture/lib/if;

    .line 3
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 4
    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    return-void
.end method

.method public constructor <init>(Lcom/luck/picture/lib/if;IZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/luck/picture/lib/do;->if:Lcom/luck/picture/lib/if;

    .line 7
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 8
    iput-boolean p3, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->if:Z

    .line 9
    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->break:I

    return-object p0
.end method

.method public abstract(Ljava/util/List;)Lcom/luck/picture/lib/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/do;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->e:Ljava/util/List;

    return-object p0
.end method

.method public b(II)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->native:I

    .line 2
    iput p2, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->public:I

    return-object p0
.end method

.method public break(II)Lcom/luck/picture/lib/do;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->while:I

    .line 2
    iput p2, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->import:I

    return-object p0
.end method

.method public case(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->volatile:Z

    return-object p0
.end method

.method public catch(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->instanceof:Z

    return-object p0
.end method

.method public class(Ljava/lang/String;)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->try:Ljava/lang/String;

    return-object p0
.end method

.method public const(I)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->throw:I

    return-object p0
.end method

.method public continue(I)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    return-object p0
.end method

.method public default(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->package:Z

    return-object p0
.end method

.method public do(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->protected:Z

    return-object p0
.end method

.method public else(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->abstract:Z

    return-object p0
.end method

.method public extends(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->private:Z

    return-object p0
.end method

.method public final(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->extends:Z

    return-object p0
.end method

.method public finally(I)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->final:I

    return-object p0
.end method

.method public for(Ljava/lang/String;)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->new:Ljava/lang/String;

    return-object p0
.end method

.method public goto(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/support/v4/j20;->do()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/do;->if:Lcom/luck/picture/lib/if;

    invoke-virtual {v0}, Lcom/luck/picture/lib/if;->else()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v2, p0, Lcom/luck/picture/lib/do;->if:Lcom/luck/picture/lib/if;

    invoke-virtual {v2}, Lcom/luck/picture/lib/if;->goto()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7
    :goto_0
    sget p1, Lcom/luck/picture/lib/R$anim;->a5:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method public if(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->default:Z

    return-object p0
.end method

.method public implements(I)Lcom/luck/picture/lib/do;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->case:I

    return-object p0
.end method

.method public import(I)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->goto:I

    return-object p0
.end method

.method public instanceof(I)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->class:I

    return-object p0
.end method

.method public interface(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->implements:Z

    return-object p0
.end method

.method public native(I)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->this:I

    return-object p0
.end method

.method public new(I)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->catch:I

    return-object p0
.end method

.method public package(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->synchronized:Z

    return-object p0
.end method

.method public private(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->a:Z

    return-object p0
.end method

.method public protected(F)Lcom/luck/picture/lib/do;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.10000000149011612
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->return:F

    return-object p0
.end method

.method public public(I)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->super:I

    return-object p0
.end method

.method public return(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->strictfp:Z

    return-object p0
.end method

.method public static(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->if:Lcom/luck/picture/lib/if;

    const-string v1, "This PictureSelector is Null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/luck/picture/lib/if;->new(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public strictfp(Ljava/lang/String;)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->for:Ljava/lang/String;

    return-object p0
.end method

.method public super(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->d:Z

    return-object p0
.end method

.method public switch(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->if:Lcom/luck/picture/lib/if;

    const-string v1, "This PictureSelector is Null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/luck/picture/lib/if;->try(ILjava/util/List;)V

    return-void
.end method

.method public synchronized(I)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->const:I

    return-object p0
.end method

.method public this(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->interface:Z

    return-object p0
.end method

.method public throw(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->finally:Z

    return-object p0
.end method

.method public throws(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->b:Z

    return-object p0
.end method

.method public transient(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->c:Z

    return-object p0
.end method

.method public try(II)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->static:I

    .line 2
    iput p2, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->switch:I

    return-object p0
.end method

.method public volatile(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->transient:Z

    return-object p0
.end method

.method public while(Z)Lcom/luck/picture/lib/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/do;->do:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->throws:Z

    return-object p0
.end method
