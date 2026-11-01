.class Lcc/shinichi/library/tool/ui/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/tool/ui/do;->do(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic for:Lcc/shinichi/library/tool/ui/do;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/tool/ui/do;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/tool/ui/do$if;->for:Lcc/shinichi/library/tool/ui/do;

    iput-object p2, p0, Lcc/shinichi/library/tool/ui/do$if;->do:Landroid/content/Context;

    iput-object p3, p0, Lcc/shinichi/library/tool/ui/do$if;->if:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/tool/ui/do$if;->do:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcc/shinichi/library/tool/ui/do$if;->if:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
