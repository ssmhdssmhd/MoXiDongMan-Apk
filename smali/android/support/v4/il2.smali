.class public Landroid/support/v4/il2;
.super Landroid/support/v4/al2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/al2;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lfreemarker/template/utility/if;->catch(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
