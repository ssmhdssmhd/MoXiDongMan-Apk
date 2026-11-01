.class Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;

.field public final synthetic val$a:[Ljava/lang/Object;

.field public final synthetic val$m:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->this$1:Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;

    iput-object p2, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->val$m:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->val$a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->this$1:Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;

    invoke-static {v0}, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;->access$000(Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->this$1:Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;

    iget-object v0, v0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;->this$0:Lcom/sun/script/util/InterfaceImplementor;

    invoke-static {v0}, Lcom/sun/script/util/InterfaceImplementor;->access$100(Lcom/sun/script/util/InterfaceImplementor;)Ljavax/script/Invocable;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->val$m:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->val$a:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljavax/script/Invocable;->invokeFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->this$1:Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;

    iget-object v0, v0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;->this$0:Lcom/sun/script/util/InterfaceImplementor;

    invoke-static {v0}, Lcom/sun/script/util/InterfaceImplementor;->access$100(Lcom/sun/script/util/InterfaceImplementor;)Ljavax/script/Invocable;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->this$1:Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;

    invoke-static {v1}, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;->access$000(Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->val$m:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/script/util/InterfaceImplementor$InterfaceImplementorInvocationHandler$1;->val$a:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Ljavax/script/Invocable;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
