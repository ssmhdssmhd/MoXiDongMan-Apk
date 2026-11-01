.class Lcom/sun/script/javascript/RhinoScriptEngine$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/script/javascript/RhinoScriptEngine$1;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sun/script/javascript/RhinoScriptEngine$1;

.field public final synthetic val$args:[Ljava/lang/Object;

.field public final synthetic val$callable:Lorg/mozilla/javascript/Callable;

.field public final synthetic val$cx:Lorg/mozilla/javascript/Context;

.field public final synthetic val$scope:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic val$thisObj:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Lcom/sun/script/javascript/RhinoScriptEngine$1;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->this$0:Lcom/sun/script/javascript/RhinoScriptEngine$1;

    iput-object p2, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->val$callable:Lorg/mozilla/javascript/Callable;

    iput-object p3, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->val$cx:Lorg/mozilla/javascript/Context;

    iput-object p4, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->val$scope:Lorg/mozilla/javascript/Scriptable;

    iput-object p5, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->val$thisObj:Lorg/mozilla/javascript/Scriptable;

    iput-object p6, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->this$0:Lcom/sun/script/javascript/RhinoScriptEngine$1;

    iget-object v1, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->val$callable:Lorg/mozilla/javascript/Callable;

    iget-object v2, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->val$cx:Lorg/mozilla/javascript/Context;

    iget-object v3, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->val$scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->val$thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v5, p0, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;->val$args:[Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/sun/script/javascript/RhinoScriptEngine$1;->access$200(Lcom/sun/script/javascript/RhinoScriptEngine$1;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
