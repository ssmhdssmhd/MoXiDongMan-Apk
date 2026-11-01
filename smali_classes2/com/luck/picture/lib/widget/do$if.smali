.class Lcom/luck/picture/lib/widget/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/widget/do;->case()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/widget/do;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/widget/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/widget/do$if;->do:Lcom/luck/picture/lib/widget/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/widget/do$if;->do:Lcom/luck/picture/lib/widget/do;

    invoke-static {v0}, Lcom/luck/picture/lib/widget/do;->new(Lcom/luck/picture/lib/widget/do;)V

    return-void
.end method
