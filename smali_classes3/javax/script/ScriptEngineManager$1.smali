.class Ljavax/script/ScriptEngineManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/script/ScriptEngineManager;->init(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Ljavax/script/ScriptEngineManager;

.field public final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljavax/script/ScriptEngineManager;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljavax/script/ScriptEngineManager$1;->this$0:Ljavax/script/ScriptEngineManager;

    iput-object p2, p0, Ljavax/script/ScriptEngineManager$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ljavax/script/ScriptEngineManager$1;->this$0:Ljavax/script/ScriptEngineManager;

    iget-object v1, p0, Ljavax/script/ScriptEngineManager$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Ljavax/script/ScriptEngineManager;->access$000(Ljavax/script/ScriptEngineManager;Ljava/lang/ClassLoader;)V

    const/4 v0, 0x0

    return-object v0
.end method
