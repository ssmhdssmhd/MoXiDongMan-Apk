.class Lfreemarker/ext/beans/continue$for;
.super Lfreemarker/ext/beans/continue$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/continue;->this([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic try:Lfreemarker/ext/beans/continue;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/continue;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/continue$for;->try:Lfreemarker/ext/beans/continue;

    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/continue$new;-><init>(Lfreemarker/ext/beans/continue;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lfreemarker/template/utility/if;->break(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lfreemarker/template/utility/if;->class(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
