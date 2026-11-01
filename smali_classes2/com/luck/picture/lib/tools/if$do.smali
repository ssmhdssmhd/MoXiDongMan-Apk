.class final Lcom/luck/picture/lib/tools/if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/tools/if;->for(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/luck/picture/lib/tools/if$do;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/luck/picture/lib/tools/if$do;->do:Z

    invoke-static {}, Lcom/luck/picture/lib/tools/if;->do()Landroid/media/SoundPool;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/if;->if(ZLandroid/media/SoundPool;)V

    return-void
.end method
