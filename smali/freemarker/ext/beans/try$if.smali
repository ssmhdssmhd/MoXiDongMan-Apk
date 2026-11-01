.class Lfreemarker/ext/beans/try$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/beans/MethodAppearanceFineTuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/try;-><init>(Lfreemarker/ext/beans/else;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/ext/beans/try;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/try$if;->do:Lfreemarker/ext/beans/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lfreemarker/ext/beans/try$else;Lfreemarker/ext/beans/try$case;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try$if;->do:Lfreemarker/ext/beans/try;

    invoke-virtual {p1}, Lfreemarker/ext/beans/try$else;->do()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lfreemarker/ext/beans/try$else;->if()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lfreemarker/ext/beans/try;->catch(Ljava/lang/Class;Ljava/lang/reflect/Method;Lfreemarker/ext/beans/try$case;)V

    return-void
.end method
