.class Lfreemarker/template/super;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/AttemptExceptionReporter;


# static fields
.field private static final if:Lfreemarker/log/if;


# instance fields
.field private final do:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.runtime"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/template/super;->if:Lfreemarker/log/if;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/super;->do:Z

    return-void
.end method


# virtual methods
.method public report(Lfreemarker/template/TemplateException;Lfreemarker/core/d0;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lfreemarker/template/super;->do:Z

    const-string v0, "Error executing FreeMarker template part in the #attempt block"

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lfreemarker/template/super;->if:Lfreemarker/log/if;

    invoke-virtual {p2, v0, p1}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lfreemarker/template/super;->if:Lfreemarker/log/if;

    invoke-virtual {p2, v0, p1}, Lfreemarker/log/if;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
